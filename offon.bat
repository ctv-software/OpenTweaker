
chcp 1251


if "%1" =="-doff" regedit.exe /s reg\defoff.reg
if "%1" =="-don" regedit.exe /s reg\defon.reg
if "%1" =="-apdoff" net stop wuauserv
if "%1" =="-apdoff" sc config wuauserv start= disabled
if "%1" =="-apdon" net stop wuauserv
if "%1" =="-apdon" sc config wuauserv start= auto
if "%1" =="-supon" net user администратор /active:yes
if "%1" =="-supon" set Pasword=
if "%1" =="-supon" for /f "delims=" %%a in ('winput.exe "Суперпользователь Windows" "set Pasword=$input" "Please enter password" /pass /fc:#CC4400 /dx:100 /fs:11') do %%a
if "%1" =="-supon" net user администратор %Pasword%
if "%1" =="-supoff" net user администратор /active:no
if "%1" =="-suponeng" net user administrator /active:yes
if "%1" =="-suponeng" set Pasword=
if "%1" =="-suponeng" for /f "delims=" %%a in ('winput.exe "Суперпользователь Windows" "set Pasword=$input" "Please enter password" /pass /fc:#CC4400 /dx:100 /fs:11') do %%a
if "%1" =="-suponeng" net user administrator %Pasword%
if "%1" =="-supoffeng"  net user administrator /active::no
if "%1" =="-newuser" set TheInput=
if "%1" =="-newuser" winput "Создать учетную запись" "set TheInput=$input" "Please enter your name" "Bill" /timeout=25 /bg=#BBFFAA  /fc=#CC4400 /dx=100 /dy=-40 /fs=10 > temp\temp.cmd
if "%1" =="-newuser" call temp\temp.cmd
if "%1" =="-newuser" net user %TheInput% /add
if "%1" =="-deluser" set TheInput=
if "%1" =="-deluser" winput "Удалить учетную запись" "set TheInput=$input" "Please enter your name" "Bill" /timeout=25 /bg=#BBFFAA  /fc=#CC4400 /dx=100 /dy=-40 /fs=10 > temp\temp.cmd
if "%1" =="-deluser" call temp\temp.cmd
if "%1" =="-deluser" net user %TheInput% /delete
if "%1" =="-pasuser" set Nameus=
if "%1" =="-pasuser" winput "Установить пароль " "set Nameus=$input" "Please enter your name" "Bill" /timeout=25 /bg=#BBFFAA  /fc=#CC4400 /dx=100 /dy=-40 /fs=10 > temp\temp.cmd
if "%1" =="-pasuser" call temp\temp.cmd
if "%1" =="-pasuser" set TheInput=
if "%1" =="-pasuser" for /f "delims=" %%a in ('winput.exe "Установить пароль " "set TheInput=$input" "Please enter password" /pass /fc:#CC4400 /dx:100 /fs:11') do %%a
if "%1" =="-pasuser" net user %Nameus% %TheInput% 
if "%1" =="-UnloadDLL" regedit.exe /s reg\unloaddll.reg
if "%1" =="-loadDLL" regedit.exe /s reg\loaddll.reg
if "%1" =="-Startup" regedit.exe /s reg\Startupdelayinmsec.reg
if "%1" =="-Startupoff" regedit.exe /s reg\Startupdelayinmsecoff.reg
if "%1" =="-bayoff" regedit.exe /s reg\bayoff.reg
if "%1" =="-bayon" regedit.exe /s reg\bayon.reg
if "%1" =="-telem" sc delete DiagTrack
if "%1" =="-telem" sc delete dmwappushservice
if "%1" =="-telem" echo «» > C:\ProgramData\Microsoft\Diagnosis\ETLLogs\AutoLogger\AutoLogger-Diagtrack-Listener.etl
if "%1" =="-telem" reg add HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection /v AllowTelemetry /t REG_DWORD /d 0 /f
if "%1" =="-kshon" regedit.exe /s reg\DeliveryOptimization.reg
if "%1" =="-kshoff" regedit.exe /s reg\DeliveryOptimizatioff.reg
if "%1" =="-setprintoff" regedit.exe /s reg\setprintoff.reg
if "%1" =="-setprinton" regedit.exe /s reg\setprinton.reg
if "%1" =="-offindex" regedit.exe /s reg\offceshhard.reg
if "%1" =="-turbostart" regedit.exe /s reg\MenuShowDelay.reg
if "%1" =="-imgcesh" regedit.exe /s reg\imgcesh.reg
if "%1" =="-ClearPageFile" regedit.exe /s reg\ClearPageFile.reg
if "%1" =="-PagingExecutive" regedit.exe /s reg\DisablePagingExecutive.reg
if "%1" =="-ShowInfoTip" regedit.exe /s reg\ShowInfoTip.reg
if "%1" =="-AutoRun" regedit.exe /s reg\AutoRun.reg
if "%1" =="-NotifyNewApps" regedit.exe /s reg\Start_NotifyNewApps.reg
if "%1" =="-NoRecent" regedit.exe /s reg\NoRecentDocsHistory.reg
if "%1" =="-2xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority2x.reg
if "%1" =="-4xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority4x.reg
if "%1" =="-6xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority6x.reg
if "%1" =="-8xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority8x.reg
if "%1" =="-10xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority10x.reg
if "%1" =="-12xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority12x.reg
if "%1" =="-14xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority14x.reg
if "%1" =="-16xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority16x.reg
if "%1" =="-18xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority18x.reg
if "%1" =="-20xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority20x.reg
if "%1" =="-22xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority22x.reg
if "%1" =="-24xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority24x.reg
if "%1" =="-26xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority26x.reg
if "%1" =="-SmartScreen" regedit.exe /s reg\EnableSmartScreen.reg
if "%1" =="-historyupdate" net stop wuauserv
if "%1" =="-historyupdate" sc config wuauserv start=disabled
if "%1" =="-historyupdate" net stop usosvc
if "%1" =="-historyupdate" sc config usosvc start=disabled
if "%1" =="-historyupdate" del /F /S /Q /A %SYSTEMROOT%\\SoftwareDistribution\\DataStore\\*
if "%1" =="-historyupdate" del /F /S /Q /A %ProgramData%\\USOPrivate\\UpdateStore\\*
if "%1" =="-historyupdate" sc config wuauserv start=auto
if "%1" =="-historyupdate" net start wuauserv
if "%1" =="-historyupdate" sc config usosvc start= delayed-auto
if "%1" =="-historyupdate" net start usosvc
if "%1" =="-historyupdate" net start wuauserv
if "%1" =="-tempfile" del /F /S /Q /A %temp%\*.*
if "%1" =="-politic" pushd "%~dp0"
if "%1" =="-politic" dir /b %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientExtensions-Package~3*.mum >temp\List.txt
if "%1" =="-politic" dir /b %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientTools-Package~3*.mum >>temp\List.txt
if "%1" =="-politic" for /f %%i in ('findstr /i . temp\List.txt 2^>nul') do dism /online /norestart /add-package:"%SystemRoot%\servicing\Packages\%%i"
if "%1" =="-uacoff" reg ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f
if "%1" =="-hiberoff" powercfg.exe /hibernate off
if "%1" =="-firewalloff" netsh advfirewall set allprofiles state off
if "%1" =="-Recycle" rd /s /q %systemdrive%\$Recycle.bin
if "%1" =="-flushdns" ipconfig /flushdns




if "%2" =="-doff" regedit.exe /s reg\defoff.reg
if "%2" =="-don" regedit.exe /s reg\defon.reg
if "%2" =="-apdoff" net stop wuauserv
if "%2" =="-apdoff" sc config wuauserv start= disabled
if "%2" =="-apdon" net stop wuauserv
if "%2" =="-apdon" sc config wuauserv start= auto
if "%2" =="-supon" net user администратор /active:yes
if "%2" =="-supon" set Pasword=
if "%2" =="-supon" for /f "delims=" %%a in ('winput.exe "Суперпользователь Windows" "set Pasword=$input" "Please enter password" /pass /fc:#CC4400 /dx:100 /fs:11') do %%a
if "%2" =="-supon" net user администратор %Pasword%
if "%2" =="-supoff" net user администратор /active:no
if "%2" =="-suponeng" net user administrator /active:yes
if "%2" =="-suponeng" set Pasword=
if "%2" =="-suponeng" for /f "delims=" %%a in ('winput.exe "Суперпользователь Windows" "set Pasword=$input" "Please enter password" /pass /fc:#CC4400 /dx:100 /fs:11') do %%a
if "%2" =="-suponeng" net user administrator %Pasword%
if "%2" =="-supoffeng"  net user administrator /active::no
if "%2" =="-newuser" set TheInput=
if "%2" =="-newuser" winput "Создать учетную запись" "set TheInput=$input" "Please enter your name" "Bill" /timeout=25 /bg=#BBFFAA  /fc=#CC4400 /dx=100 /dy=-40 /fs=10 > temp\temp.cmd
if "%2" =="-newuser" call temp\temp.cmd
if "%2" =="-newuser" net user %TheInput% /add
if "%2" =="-deluser" set TheInput=
if "%2" =="-deluser" winput "Удалить учетную запись" "set TheInput=$input" "Please enter your name" "Bill" /timeout=25 /bg=#BBFFAA  /fc=#CC4400 /dx=100 /dy=-40 /fs=10 > temp\temp.cmd
if "%2" =="-deluser" call temp\temp.cmd
if "%2" =="-deluser" net user %TheInput% /delete
if "%2" =="-pasuser" set Nameus=
if "%2" =="-pasuser" winput "Установить пароль " "set Nameus=$input" "Please enter your name" "Bill" /timeout=25 /bg=#BBFFAA  /fc=#CC4400 /dx=100 /dy=-40 /fs=10 > temp\temp.cmd
if "%2" =="-pasuser" call temp\temp.cmd
if "%2" =="-pasuser" set TheInput=
if "%2" =="-pasuser" for /f "delims=" %%a in ('winput.exe "Установить пароль " "set TheInput=$input" "Please enter password" /pass /fc:#CC4400 /dx:100 /fs:11') do %%a
if "%2" =="-pasuser" net user %Nameus% %TheInput% 
if "%2" =="-UnloadDLL" regedit.exe /s reg\unloaddll.reg
if "%2" =="-loadDLL" regedit.exe /s reg\loaddll.reg
if "%2" =="-Startup" regedit.exe /s reg\Startupdelayinmsec.reg
if "%2" =="-Startupoff" regedit.exe /s reg\Startupdelayinmsecoff.reg
if "%2" =="-bayoff" regedit.exe /s reg\bayoff.reg
if "%2" =="-bayon" regedit.exe /s reg\bayon.reg
if "%2" =="-telem" sc delete DiagTrack
if "%2" =="-telem" sc delete dmwappushservice
if "%2" =="-telem" echo «» > C:\ProgramData\Microsoft\Diagnosis\ETLLogs\AutoLogger\AutoLogger-Diagtrack-Listener.etl
if "%2" =="-telem" reg add HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection /v AllowTelemetry /t REG_DWORD /d 0 /f
if "%2" =="-kshon" regedit.exe /s reg\DeliveryOptimization.reg
if "%2" =="-kshoff" regedit.exe /s reg\DeliveryOptimizatioff.reg
if "%2" =="-setprintoff" regedit.exe /s reg\setprintoff.reg
if "%2" =="-setprinton" regedit.exe /s reg\setprinton.reg
if "%2" =="-offindex" regedit.exe /s reg\offceshhard.reg
if "%2" =="-turbostart" regedit.exe /s reg\MenuShowDelay.reg
if "%2" =="-imgcesh" regedit.exe /s reg\imgcesh.reg
if "%2" =="-ClearPageFile" regedit.exe /s reg\ClearPageFile.reg
if "%2" =="-PagingExecutive" regedit.exe /s reg\DisablePagingExecutive.reg
if "%2" =="-ShowInfoTip" regedit.exe /s reg\ShowInfoTip.reg
if "%2" =="-AutoRun" regedit.exe /s reg\AutoRun.reg
if "%2" =="-NotifyNewApps" regedit.exe /s reg\Start_NotifyNewApps.reg
if "%2" =="-NoRecent" regedit.exe /s reg\NoRecentDocsHistory.reg
if "%2" =="-2xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority2x.reg
if "%2" =="-4xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority4x.reg
if "%2" =="-6xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority6x.reg
if "%2" =="-8xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority8x.reg
if "%2" =="-10xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority10x.reg
if "%2" =="-12xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority12x.reg
if "%2" =="-14xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority14x.reg
if "%2" =="-16xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority16x.reg
if "%2" =="-18xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority18x.reg
if "%2" =="-20xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority20x.reg
if "%2" =="-22xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority22x.reg
if "%2" =="-24xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority24x.reg
if "%2" =="-26xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority26x.reg
if "%2" =="-SmartScreen" regedit.exe /s reg\EnableSmartScreen.reg
if "%2" =="-historyupdate" net stop wuauserv
if "%2" =="-historyupdate" sc config wuauserv start=disabled
if "%2" =="-historyupdate" net stop usosvc
if "%2" =="-historyupdate" sc config usosvc start=disabled
if "%2" =="-historyupdate" del /F /S /Q /A %SYSTEMROOT%\\SoftwareDistribution\\DataStore\\*
if "%2" =="-historyupdate" del /F /S /Q /A %ProgramData%\\USOPrivate\\UpdateStore\\*
if "%2" =="-historyupdate" sc config wuauserv start=auto
if "%2" =="-historyupdate" net start wuauserv
if "%2" =="-historyupdate" sc config usosvc start= delayed-auto
if "%2" =="-historyupdate" net start usosvc
if "%2" =="-historyupdate" net start wuauserv
if "%2" =="-tempfile" del /F /S /Q /A %temp%\*.*
if "%2" =="-politic" pushd "%~dp0"
if "%2" =="-politic" dir /b %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientExtensions-Package~3*.mum >temp\List.txt
if "%2" =="-politic" dir /b %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientTools-Package~3*.mum >>temp\List.txt
if "%2" =="-politic" for /f %%i in ('findstr /i . temp\List.txt 2^>nul') do dism /online /norestart /add-package:"%SystemRoot%\servicing\Packages\%%i"
if "%2" =="-uacoff" reg ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f
if "%2" =="-hiberoff" powercfg.exe /hibernate off
if "%2" =="-firewalloff" netsh advfirewall set allprofiles state off
if "%2" =="-Recycle" rd /s /q %systemdrive%\$Recycle.bin
if "%2" =="-flushdns" ipconfig /flushdns




if "%3" =="-doff" regedit.exe /s reg\defoff.reg
if "%3" =="-don" regedit.exe /s reg\defon.reg
if "%3" =="-apdoff" net stop wuauserv
if "%3" =="-apdoff" sc config wuauserv start= disabled
if "%3" =="-apdon" net stop wuauserv
if "%3" =="-apdon" sc config wuauserv start= auto
if "%3" =="-supon" net user администратор /active:yes
if "%3" =="-supon" set Pasword=
if "%3" =="-supon" for /f "delims=" %%a in ('winput.exe "Суперпользователь Windows" "set Pasword=$input" "Please enter password" /pass /fc:#CC4400 /dx:100 /fs:11') do %%a
if "%3" =="-supon" net user администратор %Pasword%
if "%3" =="-supoff" net user администратор /active:no
if "%3" =="-suponeng" net user administrator /active:yes
if "%3" =="-suponeng" set Pasword=
if "%3" =="-suponeng" for /f "delims=" %%a in ('winput.exe "Суперпользователь Windows" "set Pasword=$input" "Please enter password" /pass /fc:#CC4400 /dx:100 /fs:11') do %%a
if "%3" =="-suponeng" net user administrator %Pasword%
if "%3" =="-supoffeng"  net user administrator /active::no
if "%3" =="-newuser" set TheInput=
if "%3" =="-newuser" winput "Создать учетную запись" "set TheInput=$input" "Please enter your name" "Bill" /timeout=25 /bg=#BBFFAA  /fc=#CC4400 /dx=100 /dy=-40 /fs=10 > temp\temp.cmd
if "%3" =="-newuser" call temp\temp.cmd
if "%3" =="-newuser" net user %TheInput% /add
if "%3" =="-deluser" set TheInput=
if "%3" =="-deluser" winput "Удалить учетную запись" "set TheInput=$input" "Please enter your name" "Bill" /timeout=25 /bg=#BBFFAA  /fc=#CC4400 /dx=100 /dy=-40 /fs=10 > temp\temp.cmd
if "%3" =="-deluser" call temp\temp.cmd
if "%3" =="-deluser" net user %TheInput% /delete
if "%3" =="-pasuser" set Nameus=
if "%3" =="-pasuser" winput "Установить пароль " "set Nameus=$input" "Please enter your name" "Bill" /timeout=25 /bg=#BBFFAA  /fc=#CC4400 /dx=100 /dy=-40 /fs=10 > temp\temp.cmd
if "%3" =="-pasuser" call temp\temp.cmd
if "%3" =="-pasuser" set TheInput=
if "%3" =="-pasuser" for /f "delims=" %%a in ('winput.exe "Установить пароль " "set TheInput=$input" "Please enter password" /pass /fc:#CC4400 /dx:100 /fs:11') do %%a
if "%3" =="-pasuser" net user %Nameus% %TheInput% 
if "%3" =="-UnloadDLL" regedit.exe /s reg\unloaddll.reg
if "%3" =="-loadDLL" regedit.exe /s reg\loaddll.reg
if "%3" =="-Startup" regedit.exe /s reg\Startupdelayinmsec.reg
if "%3" =="-Startupoff" regedit.exe /s reg\Startupdelayinmsecoff.reg
if "%3" =="-bayoff" regedit.exe /s reg\bayoff.reg
if "%3" =="-bayon" regedit.exe /s reg\bayon.reg
if "%3" =="-telem" sc delete DiagTrack
if "%3" =="-telem" sc delete dmwappushservice
if "%3" =="-telem" echo «» > C:\ProgramData\Microsoft\Diagnosis\ETLLogs\AutoLogger\AutoLogger-Diagtrack-Listener.etl
if "%3" =="-telem" reg add HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection /v AllowTelemetry /t REG_DWORD /d 0 /f
if "%3" =="-kshon" regedit.exe /s reg\DeliveryOptimization.reg
if "%3" =="-kshoff" regedit.exe /s reg\DeliveryOptimizatioff.reg
if "%3" =="-setprintoff" regedit.exe /s reg\setprintoff.reg
if "%3" =="-setprinton" regedit.exe /s reg\setprinton.reg
if "%3" =="-offindex" regedit.exe /s reg\offceshhard.reg
if "%3" =="-turbostart" regedit.exe /s reg\MenuShowDelay.reg
if "%3" =="-imgcesh" regedit.exe /s reg\imgcesh.reg
if "%3" =="-ClearPageFile" regedit.exe /s reg\ClearPageFile.reg
if "%3" =="-PagingExecutive" regedit.exe /s reg\DisablePagingExecutive.reg
if "%3" =="-ShowInfoTip" regedit.exe /s reg\ShowInfoTip.reg
if "%3" =="-AutoRun" regedit.exe /s reg\AutoRun.reg
if "%3" =="-NotifyNewApps" regedit.exe /s reg\Start_NotifyNewApps.reg
if "%3" =="-NoRecent" regedit.exe /s reg\NoRecentDocsHistory.reg
if "%3" =="-2xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority2x.reg
if "%3" =="-4xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority4x.reg
if "%3" =="-6xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority6x.reg
if "%3" =="-8xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority8x.reg
if "%3" =="-10xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority10x.reg
if "%3" =="-12xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority12x.reg
if "%3" =="-14xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority14x.reg
if "%3" =="-16xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority16x.reg
if "%3" =="-18xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority18x.reg
if "%3" =="-20xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority20x.reg
if "%3" =="-22xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority22x.reg
if "%3" =="-24xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority24x.reg
if "%3" =="-26xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority26x.reg
if "%3" =="-SmartScreen" regedit.exe /s reg\EnableSmartScreen.reg
if "%3" =="-historyupdate" net stop wuauserv
if "%3" =="-historyupdate" sc config wuauserv start=disabled
if "%3" =="-historyupdate" net stop usosvc
if "%3" =="-historyupdate" sc config usosvc start=disabled
if "%3" =="-historyupdate" del /F /S /Q /A %SYSTEMROOT%\\SoftwareDistribution\\DataStore\\*
if "%3" =="-historyupdate" del /F /S /Q /A %ProgramData%\\USOPrivate\\UpdateStore\\*
if "%3" =="-historyupdate" sc config wuauserv start=auto
if "%3" =="-historyupdate" net start wuauserv
if "%3" =="-historyupdate" sc config usosvc start= delayed-auto
if "%3" =="-historyupdate" net start usosvc
if "%3" =="-historyupdate" net start wuauserv
if "%3" =="-tempfile" del /F /S /Q /A %temp%\*.*
if "%3" =="-politic" pushd "%~dp0"
if "%3" =="-politic" dir /b %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientExtensions-Package~3*.mum >temp\List.txt
if "%3" =="-politic" dir /b %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientTools-Package~3*.mum >>temp\List.txt
if "%3" =="-politic" for /f %%i in ('findstr /i . temp\List.txt 2^>nul') do dism /online /norestart /add-package:"%SystemRoot%\servicing\Packages\%%i"
if "%3" =="-uacoff" reg ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f
if "%3" =="-hiberoff" powercfg.exe /hibernate off
if "%3" =="-firewalloff" netsh advfirewall set allprofiles state off
if "%3" =="-Recycle" rd /s /q %systemdrive%\$Recycle.bin
if "%3" =="-flushdns" ipconfig /flushdns



if "%4" =="-doff" regedit.exe /s reg\defoff.reg
if "%4" =="-don" regedit.exe /s reg\defon.reg
if "%4" =="-apdoff" net stop wuauserv
if "%4" =="-apdoff" sc config wuauserv start= disabled
if "%4" =="-apdon" net stop wuauserv
if "%4" =="-apdon" sc config wuauserv start= auto
if "%4" =="-supon" net user администратор /active:yes
if "%4" =="-supon" set Pasword=
if "%4" =="-supon" for /f "delims=" %%a in ('winput.exe "Суперпользователь Windows" "set Pasword=$input" "Please enter password" /pass /fc:#CC4400 /dx:100 /fs:11') do %%a
if "%4" =="-supon" net user администратор %Pasword%
if "%4" =="-supoff" net user администратор /active:no
if "%4" =="-suponeng" net user administrator /active:yes
if "%4" =="-suponeng" set Pasword=
if "%4" =="-suponeng" for /f "delims=" %%a in ('winput.exe "Суперпользователь Windows" "set Pasword=$input" "Please enter password" /pass /fc:#CC4400 /dx:100 /fs:11') do %%a
if "%4" =="-suponeng" net user administrator %Pasword%
if "%4" =="-supoffeng"  net user administrator /active::no
if "%4" =="-newuser" set TheInput=
if "%4" =="-newuser" winput "Создать учетную запись" "set TheInput=$input" "Please enter your name" "Bill" /timeout=25 /bg=#BBFFAA  /fc=#CC4400 /dx=100 /dy=-40 /fs=10 > temp\temp.cmd
if "%4" =="-newuser" call temp\temp.cmd
if "%4" =="-newuser" net user %TheInput% /add
if "%4" =="-deluser" set TheInput=
if "%4" =="-deluser" winput "Удалить учетную запись" "set TheInput=$input" "Please enter your name" "Bill" /timeout=25 /bg=#BBFFAA  /fc=#CC4400 /dx=100 /dy=-40 /fs=10 > temp\temp.cmd
if "%4" =="-deluser" call temp\temp.cmd
if "%4" =="-deluser" net user %TheInput% /delete
if "%4" =="-pasuser" set Nameus=
if "%4" =="-pasuser" winput "Установить пароль " "set Nameus=$input" "Please enter your name" "Bill" /timeout=25 /bg=#BBFFAA  /fc=#CC4400 /dx=100 /dy=-40 /fs=10 > temp\temp.cmd
if "%4" =="-pasuser" call temp\temp.cmd
if "%4" =="-pasuser" set TheInput=
if "%4" =="-pasuser" for /f "delims=" %%a in ('winput.exe "Установить пароль " "set TheInput=$input" "Please enter password" /pass /fc:#CC4400 /dx:100 /fs:11') do %%a
if "%4" =="-pasuser" net user %Nameus% %TheInput% 
if "%4" =="-UnloadDLL" regedit.exe /s reg\unloaddll.reg
if "%4" =="-loadDLL" regedit.exe /s reg\loaddll.reg
if "%4" =="-Startup" regedit.exe /s reg\Startupdelayinmsec.reg
if "%4" =="-Startupoff" regedit.exe /s reg\Startupdelayinmsecoff.reg
if "%4" =="-bayoff" regedit.exe /s reg\bayoff.reg
if "%4" =="-bayon" regedit.exe /s reg\bayon.reg
if "%4" =="-telem" sc delete DiagTrack
if "%4" =="-telem" sc delete dmwappushservice
if "%4" =="-telem" echo «» > C:\ProgramData\Microsoft\Diagnosis\ETLLogs\AutoLogger\AutoLogger-Diagtrack-Listener.etl
if "%4" =="-telem" reg add HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection /v AllowTelemetry /t REG_DWORD /d 0 /f
if "%4" =="-kshon" regedit.exe /s reg\DeliveryOptimization.reg
if "%4" =="-kshoff" regedit.exe /s reg\DeliveryOptimizatioff.reg
if "%4" =="-setprintoff" regedit.exe /s reg\setprintoff.reg
if "%4" =="-setprinton" regedit.exe /s reg\setprinton.reg
if "%4" =="-offindex" regedit.exe /s reg\offceshhard.reg
if "%4" =="-turbostart" regedit.exe /s reg\MenuShowDelay.reg
if "%4" =="-imgcesh" regedit.exe /s reg\imgcesh.reg
if "%4" =="-ClearPageFile" regedit.exe /s reg\ClearPageFile.reg
if "%4" =="-PagingExecutive" regedit.exe /s reg\DisablePagingExecutive.reg
if "%4" =="-ShowInfoTip" regedit.exe /s reg\ShowInfoTip.reg
if "%4" =="-AutoRun" regedit.exe /s reg\AutoRun.reg
if "%4" =="-NotifyNewApps" regedit.exe /s reg\Start_NotifyNewApps.reg
if "%4" =="-NoRecent" regedit.exe /s reg\NoRecentDocsHistory.reg
if "%4" =="-2xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority2x.reg
if "%4" =="-4xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority4x.reg
if "%4" =="-6xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority6x.reg
if "%4" =="-8xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority8x.reg
if "%4" =="-10xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority10x.reg
if "%4" =="-12xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority12x.reg
if "%4" =="-14xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority14x.reg
if "%4" =="-16xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority16x.reg
if "%4" =="-18xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority18x.reg
if "%4" =="-20xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority20x.reg
if "%4" =="-22xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority22x.reg
if "%4" =="-24xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority24x.reg
if "%4" =="-26xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority26x.reg
if "%4" =="-SmartScreen" regedit.exe /s reg\EnableSmartScreen.reg
if "%4" =="-historyupdate" net stop wuauserv
if "%4" =="-historyupdate" sc config wuauserv start=disabled
if "%4" =="-historyupdate" net stop usosvc
if "%4" =="-historyupdate" sc config usosvc start=disabled
if "%4" =="-historyupdate" del /F /S /Q /A %SYSTEMROOT%\\SoftwareDistribution\\DataStore\\*
if "%4" =="-historyupdate" del /F /S /Q /A %ProgramData%\\USOPrivate\\UpdateStore\\*
if "%4" =="-historyupdate" sc config wuauserv start=auto
if "%4" =="-historyupdate" net start wuauserv
if "%4" =="-historyupdate" sc config usosvc start= delayed-auto
if "%4" =="-historyupdate" net start usosvc
if "%4" =="-historyupdate" net start wuauserv
if "%4" =="-tempfile" del /F /S /Q /A %temp%\*.*
if "%4" =="-politic" pushd "%~dp0"
if "%4" =="-politic" dir /b %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientExtensions-Package~3*.mum >temp\List.txt
if "%4" =="-politic" dir /b %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientTools-Package~3*.mum >>temp\List.txt
if "%4" =="-politic" for /f %%i in ('findstr /i . temp\List.txt 2^>nul') do dism /online /norestart /add-package:"%SystemRoot%\servicing\Packages\%%i"
if "%4" =="-uacoff" reg ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f
if "%4" =="-hiberoff" powercfg.exe /hibernate off
if "%4" =="-firewalloff" netsh advfirewall set allprofiles state off
if "%4" =="-Recycle" rd /s /q %systemdrive%\$Recycle.bin
if "%4" =="-flushdns" ipconfig /flushdns



if "%5" =="-doff" regedit.exe /s reg\defoff.reg
if "%5" =="-don" regedit.exe /s reg\defon.reg
if "%5" =="-apdoff" net stop wuauserv
if "%5" =="-apdoff" sc config wuauserv start= disabled
if "%5" =="-pdon" net stop wuauserv
if "%5" =="-apdon" sc config wuauserv start= auto
if "%5" =="-supon" net user администратор /active:yes
if "%5" =="-supon" set Pasword=
if "%5" =="-supon" for /f "delims=" %%a in ('winput.exe "Суперпользователь Windows" "set Pasword=$input" "Please enter password" /pass /fc:#CC4400 /dx:100 /fs:11') do %%a
if "%5" =="-supon" net user администратор %Pasword%
if "%5" =="-supoff" net user администратор /active:no
if "%5" =="-suponeng" net user administrator /active:yes
if "%5" =="-suponeng" set Pasword=
if "%5" =="-suponeng" for /f "delims=" %%a in ('winput.exe "Суперпользователь Windows" "set Pasword=$input" "Please enter password" /pass /fc:#CC4400 /dx:100 /fs:11') do %%a
if "%5" =="-suponeng" net user administrator %Pasword%
if "%5" =="-supoffeng"  net user administrator /active::no
if "%5" =="-newuser" set TheInput=
if "%5" =="-newuser" winput "Создать учетную запись" "set TheInput=$input" "Please enter your name" "Bill" /timeout=25 /bg=#BBFFAA  /fc=#CC4400 /dx=100 /dy=-40 /fs=10 > temp\temp.cmd
if "%5" =="-newuser" call temp\temp.cmd
if "%5" =="-newuser" net user %TheInput% /add
if "%5" =="-deluser" set TheInput=
if "%5" =="-deluser" winput "Удалить учетную запись" "set TheInput=$input" "Please enter your name" "Bill" /timeout=25 /bg=#BBFFAA  /fc=#CC4400 /dx=100 /dy=-40 /fs=10 > temp\temp.cmd
if "%5" =="-deluser" call temp\temp.cmd
if "%5" =="-deluser" net user %TheInput% /delete
if "%5" =="-pasuser" set Nameus=
if "%5" =="-pasuser" winput "Установить пароль " "set Nameus=$input" "Please enter your name" "Bill" /timeout=25 /bg=#BBFFAA  /fc=#CC4400 /dx=100 /dy=-40 /fs=10 > temp\temp.cmd
if "%5" =="-pasuser" call temp\temp.cmd
if "%5" =="-pasuser" set TheInput=
if "%5" =="-pasuser" for /f "delims=" %%a in ('winput.exe "Установить пароль " "set TheInput=$input" "Please enter password" /pass /fc:#CC4400 /dx:100 /fs:11') do %%a
if "%5" =="-pasuser" net user %Nameus% %TheInput% 
if "%5" =="-UnloadDLL" regedit.exe /s reg\unloaddll.reg
if "%5" =="-loadDLL" regedit.exe /s reg\loaddll.reg
if "%5" =="-Startup" regedit.exe /s reg\Startupdelayinmsec.reg
if "%5" =="-Startupoff" regedit.exe /s reg\Startupdelayinmsecoff.reg
if "%5" =="-bayoff" regedit.exe /s reg\bayoff.reg
if "%5" =="-bayon" regedit.exe /s reg\bayon.reg
if "%5" =="-telem" sc delete DiagTrack
if "%5" =="-telem" sc delete dmwappushservice
if "%5" =="-telem" echo «» > C:\ProgramData\Microsoft\Diagnosis\ETLLogs\AutoLogger\AutoLogger-Diagtrack-Listener.etl
if "%5" =="-telem" reg add HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection /v AllowTelemetry /t REG_DWORD /d 0 /f
if "%5" =="-kshon" regedit.exe /s reg\DeliveryOptimization.reg
if "%5" =="-kshoff" regedit.exe /s reg\DeliveryOptimizatioff.reg
if "%5" =="-setprintoff" regedit.exe /s reg\setprintoff.reg
if "%5" =="-setprinton" regedit.exe /s reg\setprinton.reg
if "%5" =="-kasper" apps\kfa2021.exe
if "%5" =="-Chrome" apps\ChromeSetup.exe
if "%5" =="-7ZIP" apps\7-ZIP.ver.18.01.exe
if "%5" =="-KLite" apps\klcodec253f.exe
if "%5" =="-Frame" apps\ndp48-web.exe
if "%5" =="-Java" apps\JavaSetup8u291.exe
if "%5" =="-visual" apps\VC_redist.x86.exe
if "%5" =="-DirectX" apps\dx-12.exe
if "%5" =="-offindex" regedit.exe /s reg\offceshhard.reg
if "%5" =="-turbostart" regedit.exe /s reg\MenuShowDelay.reg
if "%5" =="-imgcesh" regedit.exe /s reg\imgcesh.reg
if "%5" =="-ClearPageFile" regedit.exe /s reg\ClearPageFile.reg
if "%5" =="-PagingExecutive" regedit.exe /s reg\DisablePagingExecutive.reg
if "%5" =="-ShowInfoTip" regedit.exe /s reg\ShowInfoTip.reg
if "%5" =="-AutoRun" regedit.exe /s reg\AutoRun.reg
if "%5" =="-NotifyNewApps" regedit.exe /s reg\Start_NotifyNewApps.reg
if "%5" =="-NoRecent" regedit.exe /s reg\NoRecentDocsHistory.reg
if "%5" =="-2xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority2x.reg
if "%5" =="-4xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority4x.reg
if "%5" =="-6xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority6x.reg
if "%5" =="-8xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority8x.reg
if "%5" =="-10xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority10x.reg
if "%5" =="-12xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority12x.reg
if "%5" =="-14xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority14x.reg
if "%5" =="-16xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority16x.reg
if "%5" =="-18xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority18x.reg
if "%5" =="-20xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority20x.reg
if "%5" =="-22xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority22x.reg
if "%5" =="-24xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority24x.reg
if "%5" =="-26xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority26x.reg
if "%5" =="-SmartScreen" regedit.exe /s reg\EnableSmartScreen.reg
if "%5" =="-historyupdate" net stop wuauserv
if "%5" =="-historyupdate" sc config wuauserv start=disabled
if "%5" =="-historyupdate" net stop usosvc
if "%5" =="-historyupdate" sc config usosvc start=disabled
if "%5" =="-historyupdate" del /F /S /Q /A %SYSTEMROOT%\\SoftwareDistribution\\DataStore\\*
if "%5" =="-historyupdate" del /F /S /Q /A %ProgramData%\\USOPrivate\\UpdateStore\\*
if "%5" =="-historyupdate" sc config wuauserv start=auto
if "%5" =="-historyupdate" net start wuauserv
if "%5" =="-historyupdate" sc config usosvc start= delayed-auto
if "%5" =="-historyupdate" net start usosvc
if "%5" =="-historyupdate" net start wuauserv
if "%5" =="-tempfile" del /F /S /Q /A %temp%\*.*
if "%5" =="-politic" pushd "%~dp0"
if "%5" =="-politic" dir /b %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientExtensions-Package~3*.mum >temp\List.txt
if "%5" =="-politic" dir /b %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientTools-Package~3*.mum >>temp\List.txt
if "%5" =="-politic" for /f %%i in ('findstr /i . temp\List.txt 2^>nul') do dism /online /norestart /add-package:"%SystemRoot%\servicing\Packages\%%i"
if "%5" =="-uacoff" reg ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f
if "%5" =="-hiberoff" powercfg.exe /hibernate off
if "%5" =="-firewalloff" netsh advfirewall set allprofiles state off
if "%5" =="-Recycle" rd /s /q %systemdrive%\$Recycle.bin
if "%5" =="-flushdns" ipconfig /flushdns



if "%6" =="-doff" regedit.exe /s reg\defoff.reg
if "%6" =="-don" regedit.exe /s reg\defon.reg
if "%6" =="-apdoff" net stop wuauserv
if "%6" =="-apdoff" sc config wuauserv start= disabled
if "%6" =="-apdon" net stop wuauserv
if "%6" =="-apdon" sc config wuauserv start= auto
if "%6" =="-supon" net user администратор /active:yes
if "%6" =="-supon" set Pasword=
if "%6" =="-supon" for /f "delims=" %%a in ('winput.exe "Суперпользователь Windows" "set Pasword=$input" "Please enter password" /pass /fc:#CC4400 /dx:100 /fs:11') do %%a
if "%6" =="-supon" net user администратор %Pasword%
if "%6" =="-supoff" net user администратор /active:no
if "%6" =="-suponeng" net user administrator /active:yes
if "%6" =="-suponeng" set Pasword=
if "%6" =="-suponeng" for /f "delims=" %%a in ('winput.exe "Суперпользователь Windows" "set Pasword=$input" "Please enter password" /pass /fc:#CC4400 /dx:100 /fs:11') do %%a
if "%6" =="-suponeng" net user administrator %Pasword%
if "%6" =="-supoffeng"  net user administrator /active::no
if "%6" =="-newuser" set TheInput=
if "%6" =="-newuser" winput "Создать учетную запись" "set TheInput=$input" "Please enter your name" "Bill" /timeout=25 /bg=#BBFFAA  /fc=#CC4400 /dx=100 /dy=-40 /fs=10 > temp\temp.cmd
if "%6" =="-newuser" call temp\temp.cmd
if "%6" =="-newuser" net user %TheInput% /add
if "%6" =="-deluser" set TheInput=
if "%6" =="-deluser" winput "Удалить учетную запись" "set TheInput=$input" "Please enter your name" "Bill" /timeout=25 /bg=#BBFFAA  /fc=#CC4400 /dx=100 /dy=-40 /fs=10 > temp\temp.cmd
if "%6" =="-deluser" call temp\temp.cmd
if "%6" =="-deluser" net user %TheInput% /delete
if "%6" =="-pasuser" set Nameus=
if "%6" =="-pasuser" winput "Установить пароль " "set Nameus=$input" "Please enter your name" "Bill" /timeout=25 /bg=#BBFFAA  /fc=#CC4400 /dx=100 /dy=-40 /fs=10 > temp\temp.cmd
if "%6" =="-pasuser" call temp\temp.cmd
if "%6" =="-pasuser" set TheInput=
if "%6" =="-pasuser" for /f "delims=" %%a in ('winput.exe "Установить пароль " "set TheInput=$input" "Please enter password" /pass /fc:#CC4400 /dx:100 /fs:11') do %%a
if "%6" =="-pasuser" net user %Nameus% %TheInput% 
if "%6" =="-UnloadDLL" regedit.exe /s reg\unloaddll.reg
if "%6" =="-loadDLL" regedit.exe /s reg\loaddll.reg
if "%6" =="-Startup" regedit.exe /s reg\Startupdelayinmsec.reg
if "%6" =="-Startupoff" regedit.exe /s reg\Startupdelayinmsecoff.reg
if "%6" =="-bayoff" regedit.exe /s reg\bayoff.reg
if "%6" =="-bayon" regedit.exe /s reg\bayon.reg
if "%6" =="-telem" sc delete DiagTrack
if "%6" =="-telem" sc delete dmwappushservice
if "%6" =="-telem" echo «» > C:\ProgramData\Microsoft\Diagnosis\ETLLogs\AutoLogger\AutoLogger-Diagtrack-Listener.etl
if "%6" =="-telem" reg add HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection /v AllowTelemetry /t REG_DWORD /d 0 /f
if "%6" =="-kshon" regedit.exe /s reg\DeliveryOptimization.reg
if "%6" =="-kshoff" regedit.exe /s reg\DeliveryOptimizatioff.reg
if "%6" =="-setprintoff" regedit.exe /s reg\setprintoff.reg
if "%6" =="-setprinton" regedit.exe /s reg\setprinton.reg
if "%6" =="-offindex" regedit.exe /s reg\offceshhard.reg
if "%6" =="-turbostart" regedit.exe /s reg\MenuShowDelay.reg
if "%6" =="-imgcesh" regedit.exe /s reg\imgcesh.reg
if "%6" =="-ClearPageFile" regedit.exe /s reg\ClearPageFile.reg
if "%6" =="-PagingExecutive" regedit.exe /s reg\DisablePagingExecutive.reg
if "%6" =="-ShowInfoTip" regedit.exe /s reg\ShowInfoTip.reg
if "%6" =="-AutoRun" regedit.exe /s reg\AutoRun.reg
if "%6" =="-NotifyNewApps" regedit.exe /s reg\Start_NotifyNewApps.reg
if "%6" =="-NoRecent" regedit.exe /s reg\NoRecentDocsHistory.reg
if "%6" =="-2xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority2x.reg
if "%6" =="-4xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority4x.reg
if "%6" =="-6xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority6x.reg
if "%6" =="-8xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority8x.reg
if "%6" =="-10xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority10x.reg
if "%6" =="-12xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority12x.reg
if "%6" =="-14xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority14x.reg
if "%6" =="-16xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority16x.reg
if "%6" =="-18xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority18x.reg
if "%6" =="-20xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority20x.reg
if "%6" =="-22xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority22x.reg
if "%6" =="-24xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority24x.reg
if "%6" =="-26xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority26x.reg
if "%6" =="-SmartScreen" regedit.exe /s reg\EnableSmartScreen.reg
if "%6" =="-historyupdate" net stop wuauserv
if "%6" =="-historyupdate" sc config wuauserv start=disabled
if "%6" =="-historyupdate" net stop usosvc
if "%6" =="-historyupdate" sc config usosvc start=disabled
if "%6" =="-historyupdate" del /F /S /Q /A %SYSTEMROOT%\\SoftwareDistribution\\DataStore\\*
if "%6" =="-historyupdate" del /F /S /Q /A %ProgramData%\\USOPrivate\\UpdateStore\\*
if "%6" =="-historyupdate" sc config wuauserv start=auto
if "%6" =="-historyupdate" net start wuauserv
if "%6" =="-historyupdate" sc config usosvc start= delayed-auto
if "%6" =="-historyupdate" net start usosvc
if "%6" =="-historyupdate" net start wuauserv
if "%6" =="-tempfile" del /F /S /Q /A %temp%\*.*
if "%6" =="-politic" pushd "%~dp0"
if "%6" =="-politic" dir /b %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientExtensions-Package~3*.mum >temp\List.txt
if "%6" =="-politic" dir /b %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientTools-Package~3*.mum >>temp\List.txt
if "%6" =="-politic" for /f %%i in ('findstr /i . temp\List.txt 2^>nul') do dism /online /norestart /add-package:"%SystemRoot%\servicing\Packages\%%i"
if "%6" =="-uacoff" reg ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f
if "%6" =="-hiberoff" powercfg.exe /hibernate off
if "%6" =="-firewalloff" netsh advfirewall set allprofiles state off
if "%6" =="-Recycle" rd /s /q %systemdrive%\$Recycle.bin
if "%6" =="-flushdns" ipconfig /flushdns




if "%7" =="-doff" regedit.exe /s reg\defoff.reg
if "%7" =="-don" regedit.exe /s reg\defon.reg
if "%7" =="-apdoff" net stop wuauserv
if "%7" =="-apdoff" sc config wuauserv start= disabled
if "%7" =="-apdon" net stop wuauserv
if "%7" =="-apdon" sc config wuauserv start= auto
if "%7" =="-supon" net user администратор /active:yes
if "%7" =="-supon" set Pasword=
if "%7" =="-supon" for /f "delims=" %%a in ('winput.exe "Суперпользователь Windows" "set Pasword=$input" "Please enter password" /pass /fc:#CC4400 /dx:100 /fs:11') do %%a
if "%7" =="-supon" net user администратор %Pasword%
if "%7" =="-supoff" net user администратор /active:no
if "%7" =="-suponeng" net user administrator /active:yes
if "%7" =="-suponeng" set Pasword=
if "%7" =="-suponeng" for /f "delims=" %%a in ('winput.exe "Суперпользователь Windows" "set Pasword=$input" "Please enter password" /pass /fc:#CC4400 /dx:100 /fs:11') do %%a
if "%7" =="-suponeng" net user administrator %Pasword%
if "%7" =="-supoffeng"  net user administrator /active::no
if "%7" =="-newuser" set TheInput=
if "%7" =="-newuser" winput "Создать учетную запись" "set TheInput=$input" "Please enter your name" "Bill" /timeout=25 /bg=#BBFFAA  /fc=#CC4400 /dx=100 /dy=-40 /fs=10 > temp\temp.cmd
if "%7" =="-newuser" call temp\temp.cmd
if "%7" =="-newuser" net user %TheInput% /add
if "%7" =="-deluser" set TheInput=
if "%7" =="-deluser" winput "Удалить учетную запись" "set TheInput=$input" "Please enter your name" "Bill" /timeout=25 /bg=#BBFFAA  /fc=#CC4400 /dx=100 /dy=-40 /fs=10 > temp\temp.cmd
if "%7" =="-deluser" call temp\temp.cmd
if "%7" =="-deluser" net user %TheInput% /delete
if "%7" =="-pasuser" set Nameus=
if "%7" =="-pasuser" winput "Установить пароль " "set Nameus=$input" "Please enter your name" "Bill" /timeout=25 /bg=#BBFFAA  /fc=#CC4400 /dx=100 /dy=-40 /fs=10 > temp\temp.cmd
if "%7" =="-pasuser" call temp\temp.cmd
if "%7" =="-pasuser" set TheInput=
if "%7" =="-pasuser" for /f "delims=" %%a in ('winput.exe "Установить пароль " "set TheInput=$input" "Please enter password" /pass /fc:#CC4400 /dx:100 /fs:11') do %%a
if "%7" =="-pasuser" net user %Nameus% %TheInput% 
if "%7" =="-UnloadDLL" regedit.exe /s reg\unloaddll.reg
if "%7" =="-loadDLL" regedit.exe /s reg\loaddll.reg
if "%7" =="-Startup" regedit.exe /s reg\Startupdelayinmsec.reg
if "%7" =="-Startupoff" regedit.exe /s reg\Startupdelayinmsecoff.reg
if "%7" =="-bayoff" regedit.exe /s reg\bayoff.reg
if "%7" =="-bayon" regedit.exe /s reg\bayon.reg
if "%7" =="-telem" sc delete DiagTrack
if "%7" =="-telem" sc delete dmwappushservice
if "%7" =="-telem" echo «» > C:\ProgramData\Microsoft\Diagnosis\ETLLogs\AutoLogger\AutoLogger-Diagtrack-Listener.etl
if "%7" =="-telem" reg add HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection /v AllowTelemetry /t REG_DWORD /d 0 /f
if "%7" =="-kshon" regedit.exe /s reg\DeliveryOptimization.reg
if "%7" =="-kshoff" regedit.exe /s reg\DeliveryOptimizatioff.reg
if "%7" =="-setprintoff" regedit.exe /s reg\setprintoff.reg
if "%7" =="-setprinton" regedit.exe /s reg\setprinton.reg
if "%7" =="-offindex" regedit.exe /s reg\offceshhard.reg
if "%7" =="-turbostart" regedit.exe /s reg\MenuShowDelay.reg
if "%7" =="-imgcesh" regedit.exe /s reg\imgcesh.reg
if "%7" =="-ClearPageFile" regedit.exe /s reg\ClearPageFile.reg
if "%7" =="-PagingExecutive" regedit.exe /s reg\DisablePagingExecutive.reg
if "%7" =="-ShowInfoTip" regedit.exe /s reg\ShowInfoTip.reg
if "%7" =="-AutoRun" regedit.exe /s reg\AutoRun.reg
if "%7" =="-NotifyNewApps" regedit.exe /s reg\Start_NotifyNewApps.reg
if "%7" =="-NoRecent" regedit.exe /s reg\NoRecentDocsHistory.reg
if "%7" =="-2xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority2x.reg
if "%7" =="-4xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority4x.reg
if "%7" =="-6xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority6x.reg
if "%7" =="-8xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority8x.reg
if "%7" =="-10xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority10x.reg
if "%7" =="-12xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority12x.reg
if "%7" =="-14xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority14x.reg
if "%7" =="-16xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority16x.reg
if "%7" =="-18xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority18x.reg
if "%7" =="-20xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority20x.reg
if "%7" =="-22xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority22x.reg
if "%7" =="-24xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority24x.reg
if "%7" =="-26xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority26x.reg
if "%7" =="-SmartScreen" regedit.exe /s reg\EnableSmartScreen.reg
if "%7" =="-historyupdate" net stop wuauserv
if "%7" =="-historyupdate" sc config wuauserv start=disabled
if "%7" =="-historyupdate" net stop usosvc
if "%7" =="-historyupdate" sc config usosvc start=disabled
if "%7" =="-historyupdate" del /F /S /Q /A %SYSTEMROOT%\\SoftwareDistribution\\DataStore\\*
if "%7" =="-historyupdate" del /F /S /Q /A %ProgramData%\\USOPrivate\\UpdateStore\\*
if "%7" =="-historyupdate" sc config wuauserv start=auto
if "%7" =="-historyupdate" net start wuauserv
if "%7" =="-historyupdate" sc config usosvc start= delayed-auto
if "%7" =="-historyupdate" net start usosvc
if "%7" =="-historyupdate" net start wuauserv
if "%7" =="-tempfile" del /F /S /Q /A %temp%\*.*
if "%7" =="-politic" pushd "%~dp0"
if "%7" =="-politic" dir /b %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientExtensions-Package~3*.mum >temp\List.txt
if "%7" =="-politic" dir /b %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientTools-Package~3*.mum >>temp\List.txt
if "%7" =="-politic" for /f %%i in ('findstr /i . temp\List.txt 2^>nul') do dism /online /norestart /add-package:"%SystemRoot%\servicing\Packages\%%i"
if "%7" =="-uacoff" reg ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f
if "%7" =="-hiberoff" powercfg.exe /hibernate off
if "%7" =="-firewalloff" netsh advfirewall set allprofiles state off
if "%7" =="-Recycle" rd /s /q %systemdrive%\$Recycle.bin
if "%7" =="-flushdns" ipconfig /flushdns


if "%8" =="-doff" regedit.exe /s reg\defoff.reg
if "%8" =="-don" regedit.exe /s reg\defon.reg
if "%8" =="-apdoff" net stop wuauserv
if "%8" =="-apdoff" sc config wuauserv start= disabled
if "%8" =="-apdon" net stop wuauserv
if "%8" =="-apdon" sc config wuauserv start= auto
if "%8" =="-supon" net user администратор /active:yes
if "%8" =="-supon" set Pasword=
if "%8" =="-supon" for /f "delims=" %%a in ('winput.exe "Суперпользователь Windows" "set Pasword=$input" "Please enter password" /pass /fc:#CC4400 /dx:100 /fs:11') do %%a
if "%8" =="-supon" net user администратор %Pasword%
if "%8" =="-supoff" net user администратор /active:no
if "%8" =="-suponeng" net user administrator /active:yes
if "%8" =="-suponeng" set Pasword=
if "%8" =="-suponeng" for /f "delims=" %%a in ('winput.exe "Суперпользователь Windows" "set Pasword=$input" "Please enter password" /pass /fc:#CC4400 /dx:100 /fs:11') do %%a
if "%8" =="-suponeng" net user administrator %Pasword%
if "%8" =="-supoffeng"  net user administrator /active::no
if "%8" =="-newuser" set TheInput=
if "%8" =="-newuser" winput "Создать учетную запись" "set TheInput=$input" "Please enter your name" "Bill" /timeout=25 /bg=#BBFFAA  /fc=#CC4400 /dx=100 /dy=-40 /fs=10 > temp\temp.cmd
if "%8" =="-newuser" call temp\temp.cmd
if "%8" =="-newuser" net user %TheInput% /add
if "%8" =="-deluser" set TheInput=
if "%8" =="-deluser" winput "Удалить учетную запись" "set TheInput=$input" "Please enter your name" "Bill" /timeout=25 /bg=#BBFFAA  /fc=#CC4400 /dx=100 /dy=-40 /fs=10 > temp\temp.cmd
if "%8" =="-deluser" call temp\temp.cmd
if "%8" =="-deluser" net user %TheInput% /delete
if "%8" =="-pasuser" set Nameus=
if "%8" =="-pasuser" winput "Установить пароль " "set Nameus=$input" "Please enter your name" "Bill" /timeout=25 /bg=#BBFFAA  /fc=#CC4400 /dx=100 /dy=-40 /fs=10 > temp\temp.cmd
if "%8" =="-pasuser" call temp\temp.cmd
if "%8" =="-pasuser" set TheInput=
if "%8" =="-pasuser" for /f "delims=" %%a in ('winput.exe "Установить пароль " "set TheInput=$input" "Please enter password" /pass /fc:#CC4400 /dx:100 /fs:11') do %%a
if "%8" =="-pasuser" net user %Nameus% %TheInput% 
if "%8" =="-UnloadDLL" regedit.exe /s reg\unloaddll.reg
if "%8" =="-loadDLL" regedit.exe /s reg\loaddll.reg
if "%8" =="-Startup" regedit.exe /s reg\Startupdelayinmsec.reg
if "%8" =="-Startupoff" regedit.exe /s reg\Startupdelayinmsecoff.reg
if "%8" =="-bayoff" regedit.exe /s reg\bayoff.reg
if "%8" =="-bayon" regedit.exe /s reg\bayon.reg
if "%8" =="-telem" sc delete DiagTrack
if "%8" =="-telem" sc delete dmwappushservice
if "%8" =="-telem" echo «» > C:\ProgramData\Microsoft\Diagnosis\ETLLogs\AutoLogger\AutoLogger-Diagtrack-Listener.etl
if "%8" =="-telem" reg add HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection /v AllowTelemetry /t REG_DWORD /d 0 /f
if "%8" =="-kshon" regedit.exe /s reg\DeliveryOptimization.reg
if "%8" =="-kshoff" regedit.exe /s reg\DeliveryOptimizatioff.reg
if "%8" =="-setprintoff" regedit.exe /s reg\setprintoff.reg
if "%8" =="-setprinton" regedit.exe /s reg\setprinton.reg
if "%8" =="-offindex" regedit.exe /s reg\offceshhard.reg
if "%8" =="-turbostart" regedit.exe /s reg\MenuShowDelay.reg
if "%8" =="-imgcesh" regedit.exe /s reg\imgcesh.reg
if "%8" =="-ClearPageFile" regedit.exe /s reg\ClearPageFile.reg
if "%8" =="-PagingExecutive" regedit.exe /s reg\DisablePagingExecutive.reg
if "%8" =="-ShowInfoTip" regedit.exe /s reg\ShowInfoTip.reg
if "%8" =="-AutoRun" regedit.exe /s reg\AutoRun.reg
if "%8" =="-NotifyNewApps" regedit.exe /s reg\Start_NotifyNewApps.reg
if "%8" =="-NoRecent" regedit.exe /s reg\NoRecentDocsHistory.reg
if "%8" =="-2xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority2x.reg
if "%8" =="-4xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority4x.reg
if "%8" =="-6xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority6x.reg
if "%8" =="-8xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority8x.reg
if "%8" =="-10xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority10x.reg
if "%8" =="-12xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority12x.reg
if "%8" =="-14xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority14x.reg
if "%8" =="-16xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority16x.reg
if "%8" =="-18xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority18x.reg
if "%8" =="-20xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority20x.reg
if "%8" =="-22xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority22x.reg
if "%8" =="-24xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority24x.reg
if "%8" =="-26xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority26x.reg
if "%8" =="-SmartScreen" regedit.exe /s reg\EnableSmartScreen.reg
if "%8" =="-historyupdate" net stop wuauserv
if "%8" =="-historyupdate" sc config wuauserv start=disabled
if "%8" =="-historyupdate" net stop usosvc
if "%8" =="-historyupdate" sc config usosvc start=disabled
if "%8" =="-historyupdate" del /F /S /Q /A %SYSTEMROOT%\\SoftwareDistribution\\DataStore\\*
if "%8" =="-historyupdate" del /F /S /Q /A %ProgramData%\\USOPrivate\\UpdateStore\\*
if "%8" =="-historyupdate" sc config wuauserv start=auto
if "%8" =="-historyupdate" net start wuauserv
if "%8" =="-historyupdate" sc config usosvc start= delayed-auto
if "%8" =="-historyupdate" net start usosvc
if "%8" =="-historyupdate" net start wuauserv
if "%8" =="-tempfile" del /F /S /Q /A %temp%\*.*
if "%8" =="-politic" pushd "%~dp0"
if "%8" =="-politic" dir /b %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientExtensions-Package~3*.mum >temp\List.txt
if "%8" =="-politic" dir /b %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientTools-Package~3*.mum >>temp\List.txt
if "%8" =="-politic" for /f %%i in ('findstr /i . temp\List.txt 2^>nul') do dism /online /norestart /add-package:"%SystemRoot%\servicing\Packages\%%i"
if "%8" =="-uacoff" reg ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f
if "%8" =="-hiberoff" powercfg.exe /hibernate off
if "%8" =="-firewalloff" netsh advfirewall set allprofiles state off
if "%8" =="-Recycle" rd /s /q %systemdrive%\$Recycle.bin
if "%8" =="-flushdns" ipconfig /flushdns


if "%9" =="-doff" regedit.exe /s reg\defoff.reg
if "%9" =="-don" regedit.exe /s reg\defon.reg
if "%9" =="-apdoff" net stop wuauserv
if "%9" =="-apdoff" sc config wuauserv start= disabled
if "%9" =="-apdon" net stop wuauserv
if "%9" =="-apdon" sc config wuauserv start= auto
if "%9" =="-supon" net user администратор /active:yes
if "%9" =="-supon" set Pasword=
if "%9" =="-supon" for /f "delims=" %%a in ('winput.exe "Суперпользователь Windows" "set Pasword=$input" "Please enter password" /pass /fc:#CC4400 /dx:100 /fs:11') do %%a
if "%9" =="-supon" net user администратор %Pasword%
if "%9" =="-supoff" net user администратор /active:no
if "%9" =="-suponeng" net user administrator /active:yes
if "%9" =="-suponeng" set Pasword=
if "%9" =="-suponeng" for /f "delims=" %%a in ('winput.exe "Суперпользователь Windows" "set Pasword=$input" "Please enter password" /pass /fc:#CC4400 /dx:100 /fs:11') do %%a
if "%9" =="-suponeng" net user administrator %Pasword%
if "%9" =="-supoffeng"  net user administrator /active::no
if "%9" =="-newuser" set TheInput=
if "%9" =="-newuser" winput "Создать учетную запись" "set TheInput=$input" "Please enter your name" "Bill" /timeout=25 /bg=#BBFFAA  /fc=#CC4400 /dx=100 /dy=-40 /fs=10 > temp\temp.cmd
if "%9" =="-newuser" call temp\temp.cmd
if "%9" =="-newuser" net user %TheInput% /add
if "%9" =="-deluser" set TheInput=
if "%9" =="-deluser" winput "Удалить учетную запись" "set TheInput=$input" "Please enter your name" "Bill" /timeout=25 /bg=#BBFFAA  /fc=#CC4400 /dx=100 /dy=-40 /fs=10 > temp\temp.cmd
if "%9" =="-deluser" call temp\temp.cmd
if "%9" =="-deluser" net user %TheInput% /delete
if "%9" =="-pasuser" set Nameus=
if "%9" =="-pasuser" winput "Установить пароль " "set Nameus=$input" "Please enter your name" "Bill" /timeout=25 /bg=#BBFFAA  /fc=#CC4400 /dx=100 /dy=-40 /fs=10 > temp\temp.cmd
if "%9" =="-pasuser" call temp\temp.cmd
if "%9" =="-pasuser" set TheInput=
if "%9" =="-pasuser" for /f "delims=" %%a in ('winput.exe "Установить пароль " "set TheInput=$input" "Please enter password" /pass /fc:#CC4400 /dx:100 /fs:11') do %%a
if "%9" =="-pasuser" net user %Nameus% %TheInput% 
if "%9" =="-UnloadDLL" regedit.exe /s reg\unloaddll.reg
if "%9" =="-loadDLL" regedit.exe /s reg\loaddll.reg
if "%9" =="-Startup" regedit.exe /s reg\Startupdelayinmsec.reg
if "%9" =="-Startupoff" regedit.exe /s reg\Startupdelayinmsecoff.reg
if "%9" =="-bayoff" regedit.exe /s reg\bayoff.reg
if "%9" =="-bayon" regedit.exe /s reg\bayon.reg
if "%9" =="-telem" sc delete DiagTrack
if "%9" =="-telem" sc delete dmwappushservice
if "%9" =="-telem" echo «» > C:\ProgramData\Microsoft\Diagnosis\ETLLogs\AutoLogger\AutoLogger-Diagtrack-Listener.etl
if "%9" =="-telem" reg add HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection /v AllowTelemetry /t REG_DWORD /d 0 /f
if "%9" =="-kshon" regedit.exe /s reg\DeliveryOptimization.reg
if "%9" =="-kshoff" regedit.exe /s reg\DeliveryOptimizatioff.reg
if "%9" =="-setprintoff" regedit.exe /s reg\setprintoff.reg
if "%9" =="-setprinton" regedit.exe /s reg\setprinton.reg
if "%9" =="-offindex" regedit.exe /s reg\offceshhard.reg
if "%9" =="-turbostart" regedit.exe /s reg\MenuShowDelay.reg
if "%9" =="-imgcesh" regedit.exe /s reg\imgcesh.reg
if "%9" =="-ClearPageFile" regedit.exe /s reg\ClearPageFile.reg
if "%9" =="-PagingExecutive" regedit.exe /s reg\DisablePagingExecutive.reg
if "%9" =="-ShowInfoTip" regedit.exe /s reg\ShowInfoTip.reg
if "%9" =="-AutoRun" regedit.exe /s reg\AutoRun.reg
if "%9" =="-NotifyNewApps" regedit.exe /s reg\Start_NotifyNewApps.reg
if "%9" =="-NoRecent" regedit.exe /s reg\NoRecentDocsHistory.reg
if "%9" =="-2xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority2x.reg
if "%9" =="-4xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority4x.reg
if "%9" =="-6xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority6x.reg
if "%9" =="-8xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority8x.reg
if "%9" =="-10xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority10x.reg
if "%9" =="-12xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority12x.reg
if "%9" =="-14xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority14x.reg
if "%9" =="-16xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority16x.reg
if "%9" =="-18xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority18x.reg
if "%9" =="-20xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority20x.reg
if "%9" =="-22xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority22x.reg
if "%9" =="-24xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority24x.reg
if "%9" =="-26xprio" regedit.exe /s reg\Win32PrioritySeparation\Priority26x.reg
if "%9" =="-SmartScreen" regedit.exe /s reg\EnableSmartScreen.reg
if "%9" =="-historyupdate" net stop wuauserv
if "%9" =="-historyupdate" sc config wuauserv start=disabled
if "%9" =="-historyupdate" net stop usosvc
if "%9" =="-historyupdate" sc config usosvc start=disabled
if "%9" =="-historyupdate" del /F /S /Q /A %SYSTEMROOT%\\SoftwareDistribution\\DataStore\\*
if "%9" =="-historyupdate" del /F /S /Q /A %ProgramData%\\USOPrivate\\UpdateStore\\*
if "%9" =="-historyupdate" sc config wuauserv start=auto
if "%9" =="-historyupdate" net start wuauserv
if "%9" =="-historyupdate" sc config usosvc start= delayed-auto
if "%9" =="-historyupdate" net start usosvc
if "%9" =="-historyupdate" net start wuauserv
if "%9" =="-tempfile" del /F /S /Q /A %temp%\*.*
if "%9" =="-politic" pushd "%~dp0"
if "%9" =="-politic" dir /b %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientExtensions-Package~3*.mum >temp\List.txt
if "%9" =="-politic" dir /b %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientTools-Package~3*.mum >>temp\List.txt
if "%9" =="-politic" for /f %%i in ('findstr /i . temp\List.txt 2^>nul') do dism /online /norestart /add-package:"%SystemRoot%\servicing\Packages\%%i"
if "%9" =="-uacoff" reg ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f
if "%9" =="-hiberoff" powercfg.exe /hibernate off
if "%9" =="-firewalloff" netsh advfirewall set allprofiles state off
if "%9" =="-Recycle" rd /s /q %systemdrive%\$Recycle.bin
if "%9" =="-flushdns" ipconfig /flushdns














del temp\*.* /q

