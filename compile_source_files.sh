#!/bin/bash
# This script compiles the source code in this directory by invoking the armcl compiler. 

# Location of the compiler. You might need to change this. 
armcl_compiler=C:/ti/ccs1120/ccs/tools/compiler/ti-cgt-arm_20.2.5.LTS/bin/armcl.exe

# Root folder of the tivaware SDK. You might need to change this. 
tivaware_dir="C:/ti/TivaWare_C_Series-2.2.0.295"

# Compile flags
flags="-mv7M4 
--code_state=16 
--float_support=FPv4SPD16 
-me 
-O2 
--include_path=../
--include_path=C:/ti/TivaWare_C_Series-2.2.0.295 
--include_path=C:/ti/ti-cgt-arm_20.2.4.LTS/include 
--define=ccs=ccs 
--define=PART_TM4C123GH6PM 
--define=TARGET_IS_TM4C123_RB1 
-g 
--gcc 
--diag_warning=225 
--diag_wrap=off 
--display_error_number 
--gen_func_subsections=on 
--abi=eabi 
--ual 
--preproc_with_compile"
preproc_dep_hello="--preproc_dependency=hello.d_raw  ../hello.c "

cd Debug
C:\\ti\\ccs1120\\ccs\\utils\\bin\\gmake -k -j 8 clean -O
C:\\ti\\ccs1120\\ccs\\utils\\bin\\gmake -k -j 8 all -O
$armcl_compiler $flags $preproc_dep_hello
cd ..