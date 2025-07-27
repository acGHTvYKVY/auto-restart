#!/bin/bash
while true; do
PID=`ps aux | grep '/root/cysic-verifier/verifier' | grep -v grep | awk '{print $2}' | wc -l`
echo $PID
#if[ $PID="" ]; then
if [ "$PID" = "0" ]; then
  echo "cysic没启动"
  cd /root/cysic-verifier && ./run.sh
else
  echo "cysic启动着"
fi
sleep 1800
done
