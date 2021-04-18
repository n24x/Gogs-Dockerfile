# This is my Dockerfile for gogs

##This is a test Dockerfile for learning only

To Build it go to the locataion for Dockerfile and run
podman build -t "<name of your image>" .
to run container I use podman

podman -d -p 3000:30000 -p 22:22 --name Gogs-repo -v /data/repo-data:/home/gogs/gogs-repositories  <image-name>
