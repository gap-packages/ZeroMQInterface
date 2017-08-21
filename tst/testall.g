#
# ZeroMQInterface: ZeroMQ bindings for GAP
#
# This file runs package tests. It is also referenced in the package
# metadata in PackageInfo.g.
#
LoadPackage( "ZeroMQInterface" );
dirs := DirectoriesPackageLibrary( "ZeroMQInterface", "tst" );
TestDirectory(dirs[1], rec(exitGAP := true));

FORCE_QUIT_GAP(1);
