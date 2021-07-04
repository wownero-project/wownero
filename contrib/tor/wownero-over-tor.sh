#!/bin/bash

DIR=$(realpath $(dirname $0))

echo "Checking wownerod..."
monerod=""
for dir in \
  . \
  "$DIR" \
  "$DIR/../.." \
  "$DIR/build/release/bin" \
  "$DIR/../../build/release/bin" \
  "$DIR/build/Linux/master/release/bin" \
  "$DIR/../../build/Linux/master/release/bin" \
  "$DIR/build/Windows/master/release/bin" \
  "$DIR/../../build/Windows/master/release/bin"
do
  if test -x "$dir/wownerod"
  then
    monerod="$dir/wownerod"
    break
  fi
done
if test -z "$wownerod"
then
  echo "wownerod not found"
  exit 1
fi
echo "Found: $wownerod"

TORDIR="$DIR/wownero-over-tor"
TORRC="$TORDIR/torrc"
HOSTNAMEFILE="$TORDIR/hostname"
echo "Creating configuration..."
mkdir -p "$TORDIR"
chmod 700 "$TORDIR"
rm -f "$TORRC"
cat << EOF > "$TORRC"
ControlSocket $TORDIR/control
ControlSocketsGroupWritable 1
CookieAuthentication 1
CookieAuthFile $TORDIR/control.authcookie
CookieAuthFileGroupReadable 1
HiddenServiceDir $TORDIR
HiddenServicePort 34568 127.0.0.1:34568
EOF

echo "Starting Tor..."
nohup tor -f "$TORRC" 2> "$TORDIR/tor.stderr" 1> "$TORDIR/tor.stdout" &
ready=0
for i in `seq 10`
do
  sleep 1
  if test -f "$HOSTNAMEFILE"
  then
    ready=1
    break
  fi
done
if test "$ready" = 0
then
  echo "Error starting Tor"
  cat "$TORDIR/tor.stdout"
  exit 1
fi

echo "Starting wownerod..."
HOSTNAME=$(cat "$HOSTNAMEFILE")
"$monerod" \
  --anonymous-inbound "$HOSTNAME":34568,127.0.0.1:34568,25 --tx-proxy tor,127.0.0.1:9050,10 \
  --add-priority-node v2admi6gbeprxnk6i2oscizhgy4v5ixu6iezkhj5udiwbfjjs2w7dnid.onion:34568 \
  --add-priority-node iy6ry6uudpzvbd72zsipepukp6nsazjdu72n52vg3isfnxqn342flzad.onion:34568 \
  --add-priority-node 7ftpbpp6rbgqi5kjmhyin46essnh3eqb3m3rhfi7r2fr33iwkeuer3yd.onion:34568 \
  --add-priority-node j7rf2jcccizcp47y5moehguyuqdpg4lusk642sw4nayuruitqaqbc7ad.onion:34568 \
  --add-priority-node aje53o5z5twne5q2ljw44zkahhsuhjtwaxuburxddbf7n4pfsj4rj6qd.onion:34568 \
  --add-priority-node nepc4lxndsooj2akn7ofrj3ooqc25242obchcag6tw3f2mxrms2uuvyd.onion:34568 \
  --add-priority-node 666l2ajxqjgj5lskvbokvworjysgvqag4oitokjuy7wz6juisul4jqad.onion:34568 \
  --add-priority-node ty7ppqozzodz75audgvkprekiiqsovbyrkfdjwadrkbe3etyzloatxad.onion:34568 \
  --detach
ready=0
for i in `seq 10`
do
  sleep 1
  status=$("$wownerod" status)
  echo "$status" | grep -q "Height:"
  if test $? = 0
  then
    ready=1
    break
  fi
done
if test "$ready" = 0
then
  echo "Error starting wownerod"
  tail -n 400 "$HOME/.wownero/wownero.log" | grep -Ev stacktrace\|"Error: Couldn't connect to daemon:"\|"src/daemon/main.cpp:.*Wownero\ \'" | tail -n 20
  exit 1
fi

echo "Ready. Your Tor hidden service is $HOSTNAME"
