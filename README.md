ddclient
=====================================
Docker image for ddclient based on the phusion/baseimage:0.9.21

I just needed a basic ddclient for updating DynDns and OpenDNS. When looking for a straight forward image for ddclient, I could not find something that I did not have modify. Many had commits back into the image, executed script files that were not included in the repository or had mail components, etc. I built this image per the phusion/baseimage documentation and have included the Dockerfile and startup.sh script so that I can use a raw phusion/baseimage and simply build the entire docker container. I did steal piece parts from other repositories, so thanks to those folks.

**Pull Image**

```
docker pull owroc/ddclient
```
**Container Config**

- If you need a sampe config it is provided here, just rename it to ddclient.conf and put it in your persistant store for the ddclient container

**Docker Run Command**

```
docker run -d -v </docker/ddclient>:/config --name <ddclient> <ddclient>
```

Items encapsulated in <> can be modified to suit your preferences or you can just use what I have.

