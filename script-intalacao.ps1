Set-Location \\192.168.1.1\Trabalho\Publica\TI
$local_instaladores = "T:\Publica\TI\"
$local_antivirus = $local_instaladores+"Nova pasta\Thor Antivirus\"
$local_openvpn = $local_instaladores+"OVPN - Uniben Park Sul (nova)\"
# Set-ExecutionPolicy RemoteSigned

function Install-Exe([string]$local,[string]$executavel, [string]$programa) {
    Write-Host "[INSTALANDO] $programa" -BackgroundColor Black -ForegroundColor White
    
    Start-Process -Wait -FilePath $local$executavel -ArgumentList "/install" -PassThru
    #& $local$executavel /install
    if ($?) {
        Write-Host "[Instalado com sucesso]" -BackgroundColor Green -ForegroundColor Black
    } else {
        Write-Host "[Falha na instalacao]" -BackgroundColor Red -ForegroundColor Black
    }
}

Install-Exe $local_instaladores ChromeSetup.exe "Google Chrome"
Install-Exe $local_instaladores Anydesk.exe "Anydesk"
Install-Exe $local_instaladores TeamsSetup_c_w_.exe "Microsoft Teams"
Install-Exe $local_instaladores OfficeSetup.exe "Microsoft Office"
Install-Exe $local_instaladores PBIDesktopSetup_x64.exe "Power BI Desktop"
Install-Exe $local_openvpn openvpn-install-2.4.6-I602.exe "OpenVPN"
Install-Exe $local_antivirus HeimdalLatestVersion.exe "Antivirus"
Install-Exe $local_instaladores Firebird-3.0.4.33054_0_x64.exe "Firebird"


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
