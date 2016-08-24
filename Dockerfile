#use snapshot repo
FROM pritunl/archlinux:latest
MAINTAINER ppickfor

ENV TERM xterm

#extra packages
RUN	set -e ; \
	yes all|pacman -S --needed base-devel git scons subversion git-core valgrind cmake xorg-xauth gtk2 xorg-fonts-100dpi boost gdb jdk8-openjdk eclipse-cpp rust cargo --noconfirm ; \
	archlinux-java set java-8-openjdk ; \
	eclipse -nosplash \
		-application org.eclipse.equinox.p2.director \
		-repository https://rustdt.github.io/releases/ \
		-destination /usr/lib/eclipse \
		-installIU com.github.rustdt.feature.group ; \
	useradd -m -u 1000 -s /bin/bash  eclipse ; \
	echo 'eclipse:changemeonfirstlaunch' | chpasswd
