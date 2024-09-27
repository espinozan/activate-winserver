@echo off
:menu
cls
echo ===========================================
echo            Configuración del Sistema
echo ===========================================
echo 1. Activar el Firewall
echo 2. Desactivar el Firewall
echo 3. Activar Ejecución de Scripts de PowerShell
echo 4. Desactivar Ejecución de Scripts de PowerShell
echo 5. Salir
echo ===========================================
set /p option=Elige una opción (1-5): 

if %option%==1 goto activar_firewall
if %option%==2 goto desactivar_firewall
if %option%==3 goto activar_ps_scripts
if %option%==4 goto desactivar_ps_scripts
if %option%==5 goto salir
goto menu

:activar_firewall
echo Activando el firewall...
netsh advfirewall set allprofiles state on
echo Firewall activado.
pause
goto menu

:desactivar_firewall
echo Desactivando el firewall...
netsh advfirewall set allprofiles state off
echo Firewall desactivado.
pause
goto menu

:activar_ps_scripts
echo Activando la ejecución de scripts de PowerShell...
powershell -Command "Set-ExecutionPolicy RemoteSigned -Force"
echo Ejecución de scripts activada.
pause
goto menu

:desactivar_ps_scripts
echo Desactivando la ejecución de scripts de PowerShell...
powershell -Command "Set-ExecutionPolicy Restricted -Force"
echo Ejecución de scripts desactivada.
pause
goto menu

:salir
echo Saliendo...
exit
