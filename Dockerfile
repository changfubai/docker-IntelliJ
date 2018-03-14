FROM ubuntu:16.04

MAINTAINER changfubai <changfubai96@gmail.com>

RUN apt-get update && apt-get install -y bash

COPY IntelliJIDEALicenseServer_linux_amd64 /usr/local/IDEA/LicenseServer

RUN chmod a+x /usr/local/IDEA/LicenseServer

ENTRYPOINT ./usr/local/IDEA/LicenseServer -p 80

EXPOSE 80
