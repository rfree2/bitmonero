#!/bin/bash
# This is an example how to write own tiny script if you wish to
# run the main program you work on in another way.
# This will be usually executed by "make run" making it very handy for most IDE.
src/testfunc_netserver 2000 "u" "127.0.0.1:2000/127.0.0.1:2001/127.0.0.1:2002"
