#############################################################################
##
#W    init.g                 The zeromq  package            Markus Pfeiffer
##

#############################################################################
##
#R  Read the declaration files.
##

if (not IsBound(__GAPZEROMQ_C)) and ("zeromq" in SHOW_STAT()) then
    LoadStaticModule("zeromq");
fi;
if (not IsBound(__GAPZEROMQ_C)) and
   (Filename(DirectoriesPackagePrograms("zeromq"), "zeromq.so") <> fail) then
    LoadDynamicModule(Filename(DirectoriesPackagePrograms("zeromq"), "zeromq.so"));
fi;

ReadPackage("zeromq", "gap/zmq.g");

#E  init.g . . . . . . . . . . . . . . . . . . . . . . . . . . . .  ends here

