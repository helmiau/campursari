@ setlocal enableextensions 
@ cd /d "%~dp0"

for /R %%f in (*.exe) do (
  netsh advfirewall firewall add rule name="HelmiBlocked: %%f" dir=in program="%%f" action=block
  netsh advfirewall firewall add rule name="HelmiBlocked: %%f" dir=out program="%%f" action=block
)
pause