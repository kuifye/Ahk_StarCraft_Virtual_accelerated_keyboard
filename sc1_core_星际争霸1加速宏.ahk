#MenuMaskKey vk07  ; vk07 是未分配的.
#UseHook
Process, Priority, , High

F1::send ^+n
F4::Run,D:\资源库
return
F3::Run,D:\宿题
return
F8::SendInput, {Volume_Mute}
return
PgUp::send ^w
PgDn::send s

;*AppsKey::control
;*Rwin::alt
;*Rcontrol::w
;*Ralt::q

i::1
o::7
k::3
l::4
,::5
.::6

$[::
   send [
   sleep 70
   MouseClick
   sleep 70
   first := False
    loop 
    {
    if   first
	{
    	;Send {j Down}{j Up}  ; 自动重复由连续的按下事件组成(没有弹起事件).
	send [
	MouseClick
    	;Sleep 0.01  ; 在两次键击之间的毫秒数(或使用 SetKeyDelay 设置).
	}else{
   	 first := True
	}
    } Until Not GetKeyState("[", "P")
return

$h::
   send h
   sleep 50
   MouseClick

$=::s
$/::v
$j::
   send j
   sleep 50
   MouseClick
   sleep 90
   first := False
    loop 
    {
    if   first
	{
    	;Send {j Down}{j Up}  ; 自动重复由连续的按下事件组成(没有弹起事件).
	send j
	MouseClick
    	;Sleep 0.01  ; 在两次键击之间的毫秒数(或使用 SetKeyDelay 设置).
	}else{
   	 first := True
	}
    } Until Not GetKeyState("j", "P")
return

$p::
   send p
   sleep 50
   MouseClick
   sleep 50
   first := False
    loop 
    {
    if   first
	{
    	Send p ; 自动重复由连续的按下事件组成(没有弹起事件).
	Sleep 50
	MouseClick
    	;Sleep 0  ; 在两次键击之间的毫秒数(或使用 SetKeyDelay 设置).
	}else{
   	 first := True
	}
    } Until Not GetKeyState("p", "P")
return


$-::
   send a
   sleep 50
   MouseClick
   sleep 50
   first := False
    loop 
    {
    if   first
	{
    	Send a ; 自动重复由连续的按下事件组成(没有弹起事件).
    	;Sleep 0  ; 在两次键击之间的毫秒数(或使用 SetKeyDelay 设置).
	}else{
   	 first := True
	}
    } Until Not GetKeyState("-", "A")
return

$;::
   send {;}
   sleep 50
   MouseClick
   sleep 40
   first := False
    loop 
    {
    if   first
	{
    	Send {;} ; 自动重复由连续的按下事件组成(没有弹起事件).
    	;Sleep 0  ; 在两次键击之间的毫秒数(或使用 SetKeyDelay 设置).
	}else{
   	 first := True
	}
    } Until Not GetKeyState(";", "P")
return

$m::
   send m
   MouseClick
   sleep 140
   first := False
    loop 
    {
    if   first
	{
    	Send m ; 自动重复由连续的按下事件组成(没有弹起事件).
    	;Sleep 0  ; 在两次键击之间的毫秒数(或使用 SetKeyDelay 设置).
	}else{
   	 first := True
	}
    } Until Not GetKeyState("m", "P")
return

#IfWinActive ahk_exe chrome.exe
XButton1::send ^{Tab}
XButton2::send ^+{Tab}

#IfWinActive ahk_exe ApplicationFrameHost.exe
XButton1::send ^{Tab}
XButton2::send ^+{Tab}