$local_instaladores = "Z:\Publica\TI\"
$local_antivirus = $local_instaladores+"Nova pasta\Thor Antivirus\"
$local_openvpn = $local_instaladores+"OVPN - Uniben Park Sul (nova)\"
# Set-ExecutionPolicy RemoteSigned
 
Echo GoogleChrome
Start-Process -Wait -FilePath $local_instaladores"ChromeSetup.exe" -ArgumentList "/S" -PassThru
if ($?) {Echo "`r`n Chrome instalado com sucesso."}

Echo Anydesk
Start-Process -Wait -FilePath $local_instaladores"AnyDesk.exe" -ArgumentList "/S" -PassThru
if ($?) {Echo "`r`n Anydesk instalado com sucesso."}

Echo MicrosoftTeams
Start-Process -Wait -FilePath $local_instaladores"TeamsSetup_c_w_.exe" -ArgumentList "/S" -PassThru
if ($?) {Echo "`r`n Microsoft Teams instalado com sucesso."}

Echo MicrosoftTeams
Start-Process -Wait -FilePath $local_instaladores"OfficeSetup.exe" -ArgumentList "/S" -PassThru
if ($?) {Echo "`r`n Office instalado com sucesso."}

Echo PowerBIDesktop
Start-Process -Wait -FilePath $local_instaladores"PBIDesktopSetup_x64.exe" -ArgumentList "/S" -PassThru
if ($?) {Echo "`r`n Power BI Desktop instalado com sucesso."}

Echo OpenVPN
Start-Process -Wait -FilePath $local_openvpn"openvpn-install-2.4.6-I602.exe" -ArgumentList "/S" -PassThru
if ($?) {Echo "`r`n OpenVPN instalado com sucesso."}

Echo antivirus
Start-Process -Wait -FilePath $local_antivirus"HeimdalLatestVersion.exe"  -ArgumentList "/S" -PassThru
if ($?) {Echo "`r`n Antivirus instalado com sucesso."}


Echo firebird
Start-Process -Wait -FilePath $local_instaladores"Firebird-3.0.4.33054_0_x64.exe" -ArgumentList "/S" -PassThru
if ($?) {Echo "`r`n Power BI Desktop instalado com sucesso."}

# permissionamento impede c�pia
# Echo "Configurando Open VPN"
# Copy-Item -Path "Z:\Publica\TI\OVPN - Uniben Park Sul (nova)" -Destination "C:\Program Files\OpenVPN\config\" -Recurse
# if ($?) {Echo "\n OpenVPN configurado com sucesso."}
# Echo "Configurando Totvs"
# copy Z:\Publica\TI\smartclient_Uniben_Prod C:\
# if ($?) {Echo "\n Totvs configurado com sucesso."}
# Echo "Configurando Sistema Externo"
# copy Z:\Publica\TI\smartclient_Uniben_Prod C:\Program Files\OpenVPN\config\
# if ($?) {Echo "\n Sistema Externo configurado com sucesso."}
