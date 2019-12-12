dnl ##
dnl ## Setup autoconf
dnl ##
AC_PREREQ([2.69])
AC_INIT([zeromq], [package], [https://github.com/gap-packages/zeromq/issues], [ZeroMQInterface], [https://gap-packages.github.io/ZeroMQInterface/])
AC_CONFIG_SRCDIR([src/zmqgap.c])
AC_CONFIG_MACRO_DIR([m4])
m4_include([m4/find_gap.m4])
m4_include([m4/ax_zmq.m4])

dnl ##
dnl ## check for C compiler
dnl ##
AC_PROG_CC

dnl ##
dnl ## Locate the GAP root dir
dnl ##
FIND_GAP

dnl ##
dnl ## Locate ZeroMQ >= 2.0.0
dnl ##
AX_ZMQ([2.0.0], [], [AC_MSG_ERROR([ZeroMQ is required to build this package])])
     
dnl ##
dnl ## Finally, generate the Makefiles and output everything
dnl ##
AC_CONFIG_FILES([Makefile])
AC_OUTPUT
