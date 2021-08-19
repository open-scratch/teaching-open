#! /bin/bash

PROJECT_JAR=`ls -l '.' | grep 'teaching' | awk '{print $9}' | sort -V | awk 'END{print $1}'`
PIDS=`ps -ef | grep $PROJECT_JAR | grep java |awk '{print $2}'`
if [ -z "$PIDS" ]; then
  echo "警告: $PROJECT_JAR 未启动!"
fi
echo -e "正在停止 $PROJECT_JAR 进程[$PIDS] ...\c"
for PID in $PIDS ; do
  kill $PID > /dev/null 2>&1
done
COUNT=0
while [ $COUNT -lt 1 ]; do
  echo -e ".\c"
  sleep 1
  COUNT=1
  for PID in $PIDS ; do
    PID_EXIST=`ps -f -p $PID | grep java`
    if [ -n "$PID_EXIST" ]; then
      COUNT=0
      break
    fi
  done
done
echo "$PROJECT_JAR 进程[$PIDS], 已停止!"
echo "重启API中……"
nohup java -jar $PROJECT_JAR --spring.profiles.active=prod > teaching-api.log&
tailf teaching-api.log
