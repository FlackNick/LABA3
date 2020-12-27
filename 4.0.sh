#!/bin/bash
first=3
second=7
for ((;;))
do
   let "first = $second * $first"
done