ddclient
=====================================

Docker image for ddclient based on the phusion/baseimage:0.9.21

When looking for a straight forward image for ddclient, I could not find something that I did not have modify. Many had commits back into the image or executed script files that were not included in the repository. I build this image per the phusion/baseimage documentation and have included the Dockerfile and startup.sh script so that I can use a raw phusion/baseimage and build the entire docker container. I did steal piece parts from other images, so thanks to those folks.

**Pull Image**

```
docker pull owroc/ddclient
```

