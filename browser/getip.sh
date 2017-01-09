# https://fredrikaverpil.github.io/2016/07/31/docker-for-mac-and-gui-applications/
ip=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')
xhost + $ip
docker run -d --name firefox -e DISPLAY=$ip:0 -v /tmp/.X11-unix:/tmp/.X11-unix -v $HOME/Downloads:/root/Downloads jess/firefox
