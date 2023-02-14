#!/bin/bash
# VIRTUAL_SERVER_INSTANCE is the IP of the instnace.
for j in {1..5}; do
    echo "Performing health check. Attempt Number: ${j}"
    if [ "$(curl -s -w "%{http_code}\n"  http://${VIRTUAL_SERVER_INSTANCE}:8080/v1/ -o /dev/null)" == "200" ]; then
       echo "Application health check passed."
       exit 0
    elif [ $j -lt 5 ]; then
        sleep 1
    else
        echo "Application health check failed. Marking the deployment as failed."
        exit 1
    fi
done
