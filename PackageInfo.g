#
# ZeroMQInterface: ZeroMQ bindings for GAP
#
# This file contains package meta data. For additional information on
# the meaning and correct usage of these fields, please consult the
# manual of the "Example" package as well as the comments in its
# PackageInfo.g file.
#
SetPackageInfo( rec(

PackageName := "ZeroMQInterface",
Subtitle := "ZeroMQ bindings for GAP",
Version := "0.12",
Date := "01/11/2019", # dd/mm/yyyy format
License := "GPL-2.0-or-later",

Persons := [
  rec(
    IsAuthor := true,
    IsMaintainer := false,
    FirstNames := "Markus",
    LastName := "Pfeiffer",
    WWWHome := "http://www.morphism.de/~markusp/",
    Email := "markus.pfeiffer@st-andrews.ac.uk",
    PostalAddress := Concatenation(
               "School of Computer Science\n",
               "University of St Andrews\n",
               "Jack Cole Building, North Haugh\n",
               "St Andrews, Fife, KY16 9SX\n",
               "United Kingdom" ),
    Place := "St Andrews",
    Institution := "University of St Andrews",
  ),
  rec(
    IsAuthor := true,
    IsMaintainer := false,
    FirstNames := "Reimer",
    LastName := "Behrends",
    WWWHome := "http://www.mathematik.uni-kl.de/agag/mitglieder/wissenschaftliche-mitarbeiter/dr-reimer-behrends/",
    Email := "behrends@gmail.com",
    PostalAddress := Concatenation(
               "Technische Universität Kaiserslautern\n",
               "Fachbereich Mathematik\n",
               "Postfach 3049\n",
               "67653 Kaiserslautern\n",
               "Deutschland" ),
    Place := "Kaiserslautern",
    Institution := "Universität Kaiserslautern",
  ),
  rec(
    LastName      := "GAP Team",
    FirstNames    := "The",
    IsAuthor      := false,
    IsMaintainer  := true,
    Email         := "support@gap-system.org",
  ),
],

PackageWWWHome := "https://gap-packages.github.io/ZeroMQInterface/",

ArchiveURL     := Concatenation("https://github.com/gap-packages/ZeroMQInterface/",
                                "releases/download/v", ~.Version,
                                "/ZeroMQInterface-", ~.Version),
README_URL     := Concatenation( ~.PackageWWWHome, "README.md" ),
PackageInfoURL := Concatenation( ~.PackageWWWHome, "PackageInfo.g" ),
SourceRepository := rec( 
  Type := "git", 
  URL := "https://github.com/gap-packages/ZeroMQInterface"
),
IssueTrackerURL := Concatenation( ~.SourceRepository.URL, "/issues" ),
ArchiveFormats := ".tar.gz",

##  Status information. Currently the following cases are recognized:
##    "accepted"      for successfully refereed packages
##    "submitted"     for packages submitted for the refereeing
##    "deposited"     for packages for which the GAP developers agreed
##                    to distribute them with the core GAP system
##    "dev"           for development versions of packages
##    "other"         for all other packages
##
Status := "deposited",

AbstractHTML   :=  "",

PackageDoc := rec(
  BookName  := "ZeroMQInterface",
  ArchiveURLSubset := ["doc"],
  HTMLStart := "doc/chap0.html",
  PDFFile   := "doc/manual.pdf",
  SixFile   := "doc/manual.six",
  LongTitle := "ZeroMQ bindings for GAP",
),

Dependencies := rec(
  GAP := ">= 4.10",
  NeededOtherPackages := [ [ "GAPDoc", ">= 1.6.1" ] ],
  SuggestedOtherPackages := [ ],
  ExternalConditions := [ ],
),

AvailabilityTest := function()
        if not "ZeroMQInterface" in SHOW_STAT() and
           Filename(DirectoriesPackagePrograms("ZeroMQInterface"), "zeromqinterface.so") = fail then
          #Info(InfoWarning, 1, "ZeroMQInterface: kernel ZeroMQInterface functions not available.");
          return fail;
        fi;
        return true;
    end,

TestFile := "tst/testall.g",

Keywords := [ "zeromq", "messaging", "distributed" ],

AutoDoc := rec(
    TitlePage := rec(
        Copyright :=
"""&copyright; 2015-17 by Markus Pfeiffer, Reimer Behrends and others<P/>
The &ZeroMQInterface; package is free software; 
you can redistribute it and/or modify it under the terms of the 
<URL Text="GNU General Public License">http://www.fsf.org/licenses/gpl.html</URL> 
as published by the Free Software Foundation; either version 2 of the License, 
or (at your option) any later version.""",
        Acknowledgements :=
"""We appreciate very much all past and future comments, suggestions and 
contributions to this package and its documentation provided by &GAP; 
users and developers.""",
    ),
),



));


