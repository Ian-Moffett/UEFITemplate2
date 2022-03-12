all:
	git clone https://github.com/limine-bootloader/limine.git --branch=v2.0-branch-binary --depth=1 src/kernel/limine
	cd src/kernel; make; bash build.sh; mv Omega.iso ../../

reset:
	cd src/kernel; rm -rf limine; make clean
