all:
	nasm -f bin boot/boot.asm -o scriptlOS.bin

run: all
	qemu-system-x86_64 scriptlOS.bin

clean:
	rm -f *.bin