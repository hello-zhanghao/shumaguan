@echo off
set xv_path=D:\\Vivado\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto 71832cbd05884aa29ff2a13c3e822a06 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot shumaguan_behav xil_defaultlib.shumaguan xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
