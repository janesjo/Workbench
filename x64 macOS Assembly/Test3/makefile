default: Test3.asm
	as Test3.asm -o Test3.o 
	ld Test3.o -e _main -macosx_version_min 10.13 -lc -o Test3
clean:
	rm Test3.o
	rm Test3