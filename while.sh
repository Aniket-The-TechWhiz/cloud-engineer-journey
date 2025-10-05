#!/bin/bash
cnt=1
while [ $cnt -le 5 ]
do 
  echo "current count is $cnt"
  ((cnt++))
done
