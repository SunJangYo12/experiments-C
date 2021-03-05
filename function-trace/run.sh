#!/bin/sh

echo
echo "#### https://balau82.wordpress.com/2010/10/06/trace-and-profile-function-calls-with-gcc/ ####"
echo "#### untuk menjalankan pilih 3 lalu 4 ####"
echo "1. compile"
echo "2. clean"
echo "3. run"
echo "4. address to function name"
echo

read -p "[+] Please select number: " number

if [ "$number" = "1" ]; then
      gcc -finstrument-functions -g -c -o main.o main.c
      gcc -c -o trace.o trace.c
      gcc main.o trace.o -o main

elif [ "$number" = "2" ]; then
      rm main  main.o trace.o  trace.out

elif [ "$number" = "3" ]; then
      ./main

elif [ "$number" = "4" ]; then
      ./readtracelog.sh main trace.out
fi
