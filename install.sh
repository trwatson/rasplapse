#!/bin/bash
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  echo "sudo ${0}"
  exit
fi
mkdir -p /opt/camerad/DCIM/ /opt/camerad/bin/
chown -R pi:pi /opt/camerad/
cp camerad /etc/init.d/camerad
cp camerad.service /etc/systemd/system/camerad.service
cp camerad.sh /opt/camerad/bin/camerad.sh
chmod +x /opt/camerad/bin/camerad.sh
systemctl start camerad.service && echo "service started photos will be saved to /opt/camerad/DCIM/" || echo "something went wrong with installation"
