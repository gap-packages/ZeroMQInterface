##
##  ZeroMQInterface: Bindings to ZeroMQ for GAP
##
##  Copyright (C) 2015-2017  The ZeroMQInterface team.
##  For list of the team members, please refer to the COPYRIGHT file.
##
##  This package is licensed under the GPL 2 or later, please refer
##  to the COPYRIGHT.md and LICENSE files for details.
##

if not LoadKernelExtension("zeromqinterface") then
  Error("failed to load the ZeroMQInterface package kernel extension");
fi;


ReadPackage("ZeroMQInterface", "gap/zmq.g");
