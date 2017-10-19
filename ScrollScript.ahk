#NoEnv
#SingleInstance force
SendMode Input

lastDown := A_TickCount
lastUp := A_TickCount

WheelDown::
WheelUp::
!WheelDown::
!WheelUp::
+WheelDown::
+WheelUp::
^WheelDown::
^WheelUp::
#WheelDown::
#WheelUp::
return

*XButton1::
Send, {WheelDown}
return

XButton1::
timeElapsed := A_TickCount - lastDown
lastDown := A_TickCount
if(timeElapsed <= 300){
	while(GetKeyState("XButton1","P"))
	{
		Send, {WheelDown}
		Sleep, 10
	}
} else {
	while(GetKeyState("XButton1","P"))
	{
		Send, {WheelDown}
		Sleep, 100
	}
}
return

*XButton2::
Send, {WheelUp}
return

XButton2::
timeElapsed := A_TickCount - lastUp
lastUp := A_TickCount
if(timeElapsed <= 300){
	while(GetKeyState("XButton2","P"))
	{
		Send, {WheelUp}
		Sleep, 10
	}
} else {
	while(GetKeyState("XButton2","P"))
	{
		Send, {WheelUp}
		Sleep, 100
	}
}
return