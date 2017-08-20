gap> z1 := ZmqPushSocket("tcp://127.0.0.1:50000");; z2 := ZmqPullSocket("+tcp://127.0.0.1:50000");;
gap> ZmqSend(z1, rec( x := 5 ));
Error, Bad argument #2 of ZmqSend, expected string or non-empty list of string\
s, got record (plain)
gap> ZmqSend(z1, "Hello");
gap> ZmqReceive(z1);
Error, ZmqReceive: Operation not supported
gap> ZmqReceive(z2);
"Hello"
gap> ZmqSend(z1, [ "Hello world" ]);
gap> ZmqReceive(z2);
"Hello world"
gap> ZmqSend(z1, [ "Hello world", "second" ]);
gap> ZmqReceiveList(z2);
[ "Hello world", "second" ]
gap> ZmqSend(z1, [ "Hello world", "second" ]);
gap> ZmqReceive(z2);
"Hello world"
gap> ZmqHasMore(z2);
true
gap> ZmqReceive(z2);
"second"
gap> ZmqHasMore(z2);
false
