#MenuMaskKey vk07  ; vk07 ��δ�����.
#UseHook
Process, Priority, , High

F1::send ^+n
F4::Run,D:\��Դ��
return
F3::Run,D:\����
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
    	;Send {j Down}{j Up}  ; �Զ��ظ��������İ����¼����(û�е����¼�).
	send [
	MouseClick
    	;Sleep 0.01  ; �����μ���֮��ĺ�����(��ʹ�� SetKeyDelay ����).
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
    	;Send {j Down}{j Up}  ; �Զ��ظ��������İ����¼����(û�е����¼�).
	send j
	MouseClick
    	;Sleep 0.01  ; �����μ���֮��ĺ�����(��ʹ�� SetKeyDelay ����).
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
    	Send p ; �Զ��ظ��������İ����¼����(û�е����¼�).
	Sleep 50
	MouseClick
    	;Sleep 0  ; �����μ���֮��ĺ�����(��ʹ�� SetKeyDelay ����).
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
    	Send a ; �Զ��ظ��������İ����¼����(û�е����¼�).
    	;Sleep 0  ; �����μ���֮��ĺ�����(��ʹ�� SetKeyDelay ����).
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
    	Send {;} ; �Զ��ظ��������İ����¼����(û�е����¼�).
    	;Sleep 0  ; �����μ���֮��ĺ�����(��ʹ�� SetKeyDelay ����).
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
    	Send m ; �Զ��ظ��������İ����¼����(û�е����¼�).
    	;Sleep 0  ; �����μ���֮��ĺ�����(��ʹ�� SetKeyDelay ����).
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