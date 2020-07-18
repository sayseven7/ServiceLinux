all:
	chmod +x servicelinux.sh
clean:
	rm -f servicelinux.sh

install:
	install -m 755 servicelinux.sh /usr/sbin/servicelinux.sh

uninstall:
	rm -f /usr/sbin/servicelinux.sh
