#!/bin/bash
#
g++ -c -g -I/$HOME/include asa103_prb.cpp >& compiler.txt
if [ $? -ne 0 ]; then
  echo "Errors compiling asa103_prb.cpp"
  exit
fi
rm compiler.txt
#
g++ asa103_prb.o /$HOME/libcpp/$ARCH/asa103.o -lm
if [ $? -ne 0 ]; then
  echo "Errors linking and loading asa103_prb.o."
  exit
fi
#
rm asa103_prb.o
#
mv a.out asa103_prb
./asa103_prb > asa103_prb_output.txt
if [ $? -ne 0 ]; then
  echo "Errors running asa103_prb."
  exit
fi
rm asa103_prb
#
echo "Program output written to asa103_prb_output.txt"
