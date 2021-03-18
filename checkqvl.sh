#!/bin/bash
lastqvl=$(ls -t *.qvl | head -1)
echo -e "Checke $lastqvl ...\n"

# awk -F '\t' {print $1}' $lastqvl
grep -e '^PEW' -e '^PAW' -e '^A' -e '^E' $lastqvl | 
  awk 'cnt[$1$2]++{if (cnt[$1$2]==2) print "------------"; print prev[$1$2]; print; print "------------";} {prev[$1$2]=$0}'
