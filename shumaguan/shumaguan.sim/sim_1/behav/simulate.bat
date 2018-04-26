@echo off
set xv_path=D:\\Vivado\\Vivado\\2017.2\\bin
call %xv_path%/xsim shumaguan_behav -key {Behavioral:sim_1:Functional:shumaguan} -tclbatch shumaguan.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
