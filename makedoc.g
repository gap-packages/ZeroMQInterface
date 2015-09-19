#
# zeromq: ZeroMQ bindings for GAP and HPC-GAP
#
# This file is a script which compiles the package manual.
#
if fail = LoadPackage("AutoDoc", ">= 2014.03.27") then
    Error("AutoDoc version 2014.03.27 is required.");
fi;

AutoDoc( "zeromq" : scaffold := true, autodoc := true );

PrintTo("VERSION", PackageInfo("zeromq")[1].Version);

QUIT;
