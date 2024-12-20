Compilare e creare un'immagine avviabile

nasm -f bin biostest.asm -o biostest.bin
dd if=biostest.bin of=biostest.img bs=512 seek=4


Testare  su macchina virtuale

qemu-system-x86_64 -drive file=biostest.img,format=raw
