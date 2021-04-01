#!/bin/bash
trap "exit" SIGINT
LESSON=$1
INTERVAL=$2
mkdir -p /var/html
echo Showing the name of the lesson every $INTERVAL seconds
while :
do
  echo $(date) Understanding $LESSON
  echo $(date) Understanding $LESSON > /var/html/index.html
  sleep $INTERVAL
done

