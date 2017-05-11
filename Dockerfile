FROM centos:latest
MAINTAINER cmsj@tenshu.net
RUN yum install -y deltarpm yum-utils && \
    yum update -y && \
    yum install avahi -y && \
    yum clean all
RUN mkdir -p /var/run/dbus
VOLUME /var/run/dbus
ENTRYPOINT avahi-daemon --no-drop-root
LABEL INSTALL /usr/bin/docker run --privileged --rm --volume /:/host --name NAME IMAGE cp -v /etc/dbus-1/system.d/avahi-dbus.conf /host/etc/dbus-1/system.d/
LABEL UNINSTALL /usr/bin/docker run --privileged --rm --volume /:/host -name NAME IMAGE rm /host/etc/dbus-1/system.d/avahi-dbus.conf
