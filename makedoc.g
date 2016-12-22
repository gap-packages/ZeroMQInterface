#
# zeromq: ZeroMQ bindings for GAP
#
# This file is a script which compiles the package manual.
#
if fail = LoadPackage("AutoDoc", ">= 2016.01.21") then
    Error("AutoDoc 2016.01.21 or newer is required");
fi;

AutoDoc(rec( 
    autodoc := true,
    scaffold := rec(
        includes := [ "zmq.xml", "zgap.xml" ]
    )
));

PrintTo("VERSION", GAPInfo.PackageInfoCurrent.Version);
