# Docker Mozilla Build Environment
The purpose of this docker image is to allow building of mozilla-central (Firefox, Thunderbird, etc) using mozilla-build (mozbuild) without having to install anything on your computer, but also to make it fairly easy to run builds remotely on a cloud provider of your choice.

# Status
Dockerfile builds on Windows 10 Pro but cannot start the MSys console application.

# Setup

## Docker image size limit
This image requires an increase to the 10GB maximum image size limit which requires the following custom advanced configuration:
```
{
  ...
  "storage-opts": [
    "size=40GB"
  ]
}
```

Add this by doing the following:
1. right-click the docker icon
2. click settings
3. click Daemon
4. toggle Advanced
5. copy/paste the storage-opts into the text area
6. apply