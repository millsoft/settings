;; Mikes Autohotkey Script


; Default state of lock keys
SetNumlockState, AlwaysOn
SetCapsLockState, AlwaysOff
SetScrollLockState, AlwaysOff
return

;CTRL+WIN+ALT + KEY
^!#n::
Run Notepad
return

^!#t::
Run cmd
return


; Press middle mouse button to move up a folder in Explorer
#IfWinActive, ahk_class CabinetWClass
~MButton::Send !{Up} 
#IfWinActive
return



;I press F1 all the time but want to press ESC -.-
F1::esc

;If you press the capslock... then:
Capslock::
;play sound?.. ;)
SoundPlay, files/laszlo_ich2.mp3

CustomColor = 2244FF  ; Can be any RGB color (it will be made transparent below). 
Gui, +AlwaysOnTop +LastFound +Owner  ; +Owner prevents a taskbar button from appearing. 
Gui, Color, %CustomColor% 
Gui, Font, s228
Gui, Add, Text, cLime, ICH!

; Make all pixels of this color transparent and make the text itself translucent (150): 

WinSet, TransColor, %CustomColor% 150 
Gui, -Caption  ; Remove the title bar and window borders. 
Gui, Show, center center
Sleep, 500
Gui, destroy   ; closes the 1st Gui window

return

; Control Media with Cursor
^!#Right::Media_Next
^!#Left::Media_Prev
^!#Up::Volume_Up
^!#Down::Volume_Down


#Del::FileRecycleEmpty ; win + del




; Window always on Top
^!#PgUp:: Winset, Alwaysontop, , A ; ctrl + space


; Reload this script. I press this key when I made some changes here
^!#F12::Reload



; SUBLIME
^!#s::
IfWinExist Sublime Text
{
    WinActivateBottom, Sublime Text
}
Else
{
  Run "C:\Program Files\Sublime Text 3\sublime_text.exe"
}
Return


; CMDER
^!#c::
IfWinExist Cmder
{
    WinActivateBottom, Cmder
}
Else
{
  Run "C:\apps\cmder\Cmder.exe"
}
Return


; PHPSTORM
^!#p::
Process, Exist, phpstorm64.exe
foundWindow = %ErrorLevel%

if(foundWindow){
	;WinActivate, ahk_exe MicrosoftEdge.exe
	WinActivate, ahk_pid %foundWindow%
}else{
	;window not found, start phpstorm
  Run "C:\Program Files (x86)\JetBrains\PhpStorm 2019.1\bin\phpstorm64.exe"
}
Return


; TOTAL COMMANDER
^!#0::
IfWinExist Total Commander
{
    WinActivateBottom, Total Commander
}
Else
{
  Run "C:\Program Files\totalcmd\TOTALCMD64.EXE"
}
Return



; Disable annoying keys:
#f::Return  ; Win+F (Windows Feedback)