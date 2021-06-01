# rasplapse
Script and service files for taking timelapse photography with raspberry pi running rasbian OS.
### install
`git clone https://github.com/trwatson/rasplapse.git`

`sudo ./install.sh`

This will install and start the service, which will take a photo using `raspistill` every 1 second and store it to `/opt/DCIM/IMG_$(date +%s).jpg` until your disk fills or you stop the service.
