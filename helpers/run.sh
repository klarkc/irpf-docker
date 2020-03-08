#!/bin/sh
RFB="/home/irpf/ProgramasRFB"
JAR="java -jar IRPF/irpf.jar"

echo "current dir: $(pwd)"
echo "RFB dir: $RFB"

echo "running: $JAR"
$JAR

# re-run if it was updated
if [ $( grep -r "<updateStatus>DownloadCompleted</updateStatus>" $RFB | wc -l ) -ne 0 ]; then
    echo "update detected, waiting background proccesses to finish"
    while true; do
        sleep 30
        if [ $( ps aux | grep java | wc -l) -eq 1 ]; then
            echo "no more proccess, closing"
            exit 0
        else
            echo "still running proccess, waiting"
        fi;
    done;
else
    echo "no pending update, closing"
fi