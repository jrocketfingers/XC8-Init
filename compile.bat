set file=*.c
set hex=*.hex
set PIC=18F4550
set PATH=D:\Program Files (x86)\Microchip\xc8\v1.12\bin;D:\Program Files (x86)\mikroProg Suite For PIC

del %hex%.bak

XC8 --chip=%PIC% --output=intel %file%
mprog -w pPIC%PIC% -f %filename%.hex 