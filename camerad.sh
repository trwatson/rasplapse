#!/bin/bash
### BEGIN INIT INFO
# Provides:          AutmaticCamera
# Required-Start:    $all
# Required-Stop:
# Default-Start:     2 3 4 5
# Default-Stop:
# Short-Description: Takes pictures...
### END INIT INFO
# one second default interval if not specified as first arguement
DEFAULT_INTERVAL=1
if [[ ${1} ]]; then
  INTERVAL=${1}
else
  INTERVAL=${DEFAULT_INTERVAL}
fi
echo "Started Camerd at $(date +%s)" > /dev/kmsg
while true
do
  raspistill -o /opt/camerad/DCIM/IMG_$(date +%s).jpg
  sleep ${INTERVAL}
done
