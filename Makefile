all:
	cd kernel/; rm -rf limine 2> /dev/null; make clean; make; mv src/*.o src/*.d ./
	cd kernel/; bash build.sh; mv Omega.iso ../

start:
	git clone https://github.com/limine-bootloader/limine.git --branch=v2.0-branch-binary --depth=1 kernel/limine
	make

reset:
	cd kernel; rm -rf limine; make clean; rm *.o *.d


run:
	qemu-system-x86_64 -cdrom Omega.iso
