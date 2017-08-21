##
##  ZeroMQInterface: Bindings to ZeroMQ for GAP
##
##  Copyright (C) 2015-2017  The ZeroMQInterface team.
##  For list of the team members, please refer to the COPYRIGHT file.
##
##  This package is licensed under the GPL 2 or later, please refer
##  to the COPYRIGHT.md and LICENSE files for details.
##

if (not IsBound(__GAPZEROMQ_C)) and ("ZeroMQInterface" in SHOW_STAT()) then
    LoadStaticModule("zeromqinterface");
fi;
if (not IsBound(__GAPZEROMQ_C)) and
   (Filename(DirectoriesPackagePrograms("ZeroMQInterface"), "zeromqinterface.so") <> fail) then
    LoadDynamicModule(Filename(DirectoriesPackagePrograms("ZeroMQInterface"),
                               "zeromqinterface.so"));
fi;

ReadPackage("ZeroMQInterface", "gap/zmq.g");

