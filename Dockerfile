FROM centos:latest
MAINTAINER cmsj@tenshu.net
RUN yum install -y deltarpm yum-utils && \
    yum update -y && \
    yum install avahi -y && \
    yum clean all
RUN mkdir -p /var/run/dbus
VOLUME /var/run/dbus
ENTRYPOINT avahi-daemon --no-drop-root
