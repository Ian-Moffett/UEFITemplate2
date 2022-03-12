all:
	cd src/kernel; rm -rf limine 2> /dev/null; make clean; make
	cd src/kernel; bash build.sh; mv Omega.iso ../../

start:
	git clone https://github.com/limine-bootloader/limine.git --branch=v2.0-branch-binary --depth=1 src/kernel/limine
	make

reset:
	cd src/kernel; rm -rf limine; make clean


run:
	qemu-system-x86_64 -cdrom Omega.iso
