@echo off
title HostsTool 更新中...
mode con: cols=50 lines=16
color 5f
if exist HostsTool.bat del HostsTool.bat
copy down\HostsTool.bat HostsTool.bat
echo 正在刷新dns缓存
ipconfig /flushdns>nul 2>nul
echo 正在清理IE缓存...
del /f /s /q "%userprofile%\local Settings\temporary Internet Files\*.*">nul 2>nul
del /f /s /q "%userprofile%\local Settings\temp\*.*">nul 2>nul
del /f /s /q "%userprofile%\recent\*.*">nul 2>nul
del /f /q %userprofile%\recent\*.*>nul 2>nul
ipconfig /flushdns>nul 2>nul
cls
title Enjoy The New Version HostsTool !
mshta vbscript:msgbox("建议使用新版在线更新一次数据！",64,"更新完成！")(window.close)
pause&call HostsTool.bat&del %0