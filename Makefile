all:
	nasm -f bin boot/boot.asm -o nexus-os.bin

run:
	qemu-system-x86_64 -drive format=raw,file=nexus-os.bin

clean:
	rm -f nexus-os.bin