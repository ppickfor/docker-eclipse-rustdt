#use snapshot repo
FROM pritunl/archlinux:latest
MAINTAINER ppickfor

ENV TERM xterm

#extra packages
RUN	set -e ; \
	pacman -S --needed base-devel git scons subversion git-core valgrind cmake xorg-xauth gtk2 xorg-fonts-100dpi boost gdb eclipse-common irust cargo -noconfirm ; \
	useradd -m -u 1000 -s /bin/bash  eclipse ; \
	echo 'eclipse:changemeonfirstlaunch' | chpasswd
