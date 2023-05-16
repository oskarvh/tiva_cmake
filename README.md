# tiva_cmake
Attempt to cross-compile a FreeRTOS project for TI's TM4C processors. 

Debug contains the output files. 
Source contains the source files.

FreeRTOS is included as a submodule. 

Please install TivaWare 2.2.0.295 or later, preferably under C:\ti\TivaWare_C_Series-2.2.0.295 but if installed elsewhere, please 
modify the build thereafter. 

Compiler: Using the CCS compiler that comes with Code Composer Studio. Please install CCS 11.2.0 or later. 

Dependencies:
CCS 11.2.0 (includes the armcl compiler)
TivaWare 2.2.0.295