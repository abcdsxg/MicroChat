@echo off
echo ============================================
echo = �����ƣ�����������.BAT                                           =
echo = �����ߣ���cbNote                                                      =
echo = �����ڣ���2014-08-28                                              =
echo = ���汾����Ver1.0                                                      =

echo = ����ַ����http://blog.csdn.net/cbnotes                     =
echo ============================================
pause
echo ���������У����Ե�......
echo===========================================================================

FOR /R %dir% %%d IN (vc60.pdb vc90.pdb *.exp *.obj *.pch *.idb *.ncb *.opt *.plg *.res *.sbr *.ilk *.aps *.sdf *.temp *.dcu *.bsc) DO DEL /f /s /q "%%d" 2>nul

FOR /R . %%d IN (.) DO rd /s /q "%%d\Debug" 2>nul

FOR /R . %%d IN (.) DO rd /s /q "%%d\Release" 2>nul
echo===========================================================================

ECHO �ļ�������ϣ���������5����˳������ڽ��뵹��ʱ......... 
@echo off 
echo WScript.Sleep 300 > %temp%.\tmp
$.vbsset/ai=5:Timeoutifsetlocalset/ai=echo����ʱ����cscript//nologo
$.vbs 
goto Timeout 
goto End 
:Next 
cls & 
echo.