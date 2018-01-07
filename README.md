This is a very simple dockule for Avahi Daemon, based on CentOS.

Only tested running on Atomic host.

Install:
 * docker pull cmsj/avahi-daemon
 * docker create --privileged --restart=always --net=host --volume=/var/run/dbus:/var/run/dbus --name=avahi-daemon cmsj/avahi-daemon:latest
 * docker cp avahi-daemon:/etc/dbus-1/system.d/avahi-dbus.conf /etc/dbus-1/system.d/
 * docker start avahi-daemon
