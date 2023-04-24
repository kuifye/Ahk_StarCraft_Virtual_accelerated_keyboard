#MenuMaskKey vk07  ; vk07 是未分配的.
#UseHook
Process, Priority, , High
SetKeyDelay , 0, -1

tgq:=1
tgw:=0
tge:=1
tgr:=1
tgt:=1
tgy:=0
tgu:=0
tgi:=0
tgo:=0
tgp:=0
tgzkh:=0
tgykh:=0
tgzxh:=0
tga:=0
tgs:=1
tgd:=1
tgf:=1
tgg:=0
tgh:=1
tgj:=0
tgk:=0
tgl:=0
tgfh:=0
tgyh:=0
tgz:=1
tgx:=0
tgc:=1
tgv:=1
tgb:=0
tgn:=0
tgm:=0
tgdouh:=0
tgdianh:=0
tgyxh:=0
tg1:=0
tg2:=0
tg3:=0
tg4:=0
tg5:=0
tg6:=0
tg7:=0
tg8:=0
tg9:=0
tg0:=0
tghh:=0
tgdh:=0

global sleep_time := 150
global loop_sleep := 1

File := FileOpen("按键间隔.txt", "r", "utf-8")
if IsObject(File)
{
	l1 := File.ReadLine()
	l2 := File.ReadLine()
	RegExMatch(l1, "x).*",sleep_time)
	RegExMatch(l2, "x).*",loop_sleep)
	tgq:=SubStr(File.ReadLine(),3,1)
	tgw:=SubStr(File.ReadLine(),3,1)
	tge:=SubStr(File.ReadLine(),3,1)
	tgr:=SubStr(File.ReadLine(),3,1)
	tgt:=SubStr(File.ReadLine(),3,1)
	tgy:=SubStr(File.ReadLine(),3,1)
	tgu:=SubStr(File.ReadLine(),3,1)
	tgi:=SubStr(File.ReadLine(),3,1)
	tgo:=SubStr(File.ReadLine(),3,1)
	tgp:=SubStr(File.ReadLine(),3,1)
	tgzkh:=SubStr(File.ReadLine(),3,1)
	tgykh:=SubStr(File.ReadLine(),3,1)
	tgzxh:=SubStr(File.ReadLine(),3,1)
	tga:=SubStr(File.ReadLine(),3,1)
	tgs:=SubStr(File.ReadLine(),3,1)
	tgd:=SubStr(File.ReadLine(),3,1)
	tgf:=SubStr(File.ReadLine(),3,1)
	tgg:=SubStr(File.ReadLine(),3,1)
	tgh:=SubStr(File.ReadLine(),3,1)
	tgj:=SubStr(File.ReadLine(),3,1)
	tgk:=SubStr(File.ReadLine(),3,1)
	tgl:=SubStr(File.ReadLine(),3,1)
	tgfh:=SubStr(File.ReadLine(),3,1)
	tgyh:=SubStr(File.ReadLine(),3,1)
	tgz:=SubStr(File.ReadLine(),3,1)
	tgx:=SubStr(File.ReadLine(),3,1)
	tgc:=SubStr(File.ReadLine(),3,1)
	tgv:=SubStr(File.ReadLine(),3,1)
	tgb:=SubStr(File.ReadLine(),3,1)
	tgn:=SubStr(File.ReadLine(),3,1)
	tgm:=SubStr(File.ReadLine(),3,1)
	tgdouh:=SubStr(File.ReadLine(),3,1)
	tgdianh:=SubStr(File.ReadLine(),3,1)
	tgyxh:=SubStr(File.ReadLine(),3,1)
	tg1:=SubStr(File.ReadLine(),3,1)
	tg2:=SubStr(File.ReadLine(),3,1)
	tg3:=SubStr(File.ReadLine(),3,1)
	tg4:=SubStr(File.ReadLine(),3,1)
	tg5:=SubStr(File.ReadLine(),3,1)
	tg6:=SubStr(File.ReadLine(),3,1)
	tg7:=SubStr(File.ReadLine(),3,1)
	tg8:=SubStr(File.ReadLine(),3,1)
	tg9:=SubStr(File.ReadLine(),3,1)
	tg0:=SubStr(File.ReadLine(),3,1)
	tghh:=SubStr(File.ReadLine(),3,1)
	tgdh:=SubStr(File.ReadLine(),3,1)
}else{
	File := FileOpen("按键间隔.txt", "rw", "utf-8")
	File.Write("150`r`n1`r`nq:1`r`nw:0`r`ne:1`r`nr:1`r`nt:1`r`ny:0`r`nu:0`r`ni:0`r`no:0`r`np:0`r`n[:0`r`n]:0`r`n\:0`r`na:0`r`ns:1`r`nd:1`r`nf:1`r`ng:0`r`nh:1`r`nj:0`r`nk:0`r`nl:0`r`n;:0`r`n':0`r`nz:1`r`nx:0`r`nc:1`r`nv:1`r`nb:0`r`nn:0`r`nm:0`r`n.:0`r`n=:0`r`n/:0`r`n1:0`r`n2:0`r`n3:0`r`n4:0`r`n5:0`r`n6:0`r`n7:0`r`n8:0`r`n9:0`r`n0:0`r`n-:0`r`n=:0")
}
File.Close()

MsgBox "加速打开,想退出请右键绿色小图标~`r`n首键延迟是:" %sleep_time% "键中延迟是:" %loop_sleep%

#if tgq
$q::
   send q
   sleep sleep_time
   if GetKeyState("q", "P"){
     loop 
     {
          send q
          if !GetKeyState("q", "P"){
          break
          }
          send q
          sleep loop_sleep
     }Until Not GetKeyState("q", "P")
   }
return

#if tgw
$w::
   send w
   sleep sleep_time
   if GetKeyState("w", "P"){
     loop
    {
          send w
          if !GetKeyState("w", "P"){
          break
          }
          send w
          sleep loop_sleep
     }Until Not GetKeyState("w", "P")
   }
    return

#if tge
$e::
   send e
   sleep sleep_time
if GetKeyState("e", "P"){
loop
{
          send e
          if !GetKeyState("e", "P"){
          break
          }
          send e
          sleep loop_sleep
     }Until Not GetKeyState("e", "P")
   }
    return

#if tgr
$r::
   send r
   sleep sleep_time
if GetKeyState("r", "P"){
loop
{
          send r
          if !GetKeyState("r", "P"){
          break
          }
          send r
          sleep loop_sleep
     }Until Not GetKeyState("r", "P")
   }
    return

#if tgt
$t::
   send t
   sleep sleep_time
if GetKeyState("t", "P"){
loop
{
          send t
          if !GetKeyState("t", "P"){
          break
          }
          send t
          sleep loop_sleep
     }Until Not GetKeyState("t", "P")
   }
    return

#if tgy
$y::
   send y
   sleep sleep_time
if GetKeyState("y", "P"){
loop
{
          send y
          if !GetKeyState("y", "P"){
          break
          }
          send y
          sleep loop_sleep
     }Until Not GetKeyState("y", "P")
   }
    return

#if tgu
$u::
   send u
   sleep sleep_time
if GetKeyState("u", "P"){
loop
{
          send u
          if !GetKeyState("u", "P"){
          break
          }
          send u
          sleep loop_sleep
     }Until Not GetKeyState("u", "P")
   }
    return

#if tgi
$i::
   send i
   sleep sleep_time
if GetKeyState("i", "P"){
loop
{
          send i
          if !GetKeyState("i", "P"){
          break
          }
          send i
          sleep loop_sleep
     }Until Not GetKeyState("i", "P")
   }
    return

#if tgo
$o::
   send o
   sleep sleep_time
if GetKeyState("o", "P"){
loop
{
          send o
          if !GetKeyState("o", "P"){
          break
          }
          send o
          sleep loop_sleep
     }Until Not GetKeyState("o", "P")
   }
    return

#if tgp
$p::
   send p
   sleep sleep_time
if GetKeyState("p", "P"){
loop
{
          send p
          if !GetKeyState("p", "P"){
          break
          }
          send p
          sleep loop_sleep
     }Until Not GetKeyState("p", "P")
   }
    return

#if tgzkh
$[::
   send [
   sleep sleep_time
if GetKeyState("[", "P"){
loop
{
          send [
          if !GetKeyState("[", "P"){
          break
          }
          send [
          sleep loop_sleep
     }Until Not GetKeyState("[", "P")
   }
    return

#if tgykh
$]::
   send ]
   sleep sleep_time
if GetKeyState("]", "P"){
loop
{
          send ]
          if !GetKeyState("]", "P"){
          break
          }
          send ]
          sleep loop_sleep
     }Until Not GetKeyState("]", "P")
   }
    return

#if tgzxh
$\::
   send \
   sleep sleep_time
if GetKeyState("\", "P"){
loop
{
          send \
          if !GetKeyState("\", "P"){
          break
          }
          send \
          sleep loop_sleep
     }Until Not GetKeyState("\", "P")
   }
    return

#if tga
$a::
   send a
   sleep sleep_time
if GetKeyState("a", "P"){
loop
{
          send a
          if !GetKeyState("a", "P"){
          break
          }
          send a
          sleep loop_sleep
     }Until Not GetKeyState("a", "P")
   }
    return

#if tgs
$s::
   send s
   sleep sleep_time
if GetKeyState("s", "P"){
loop
{
          send s
          if !GetKeyState("s", "P"){
          break
          }
          send s
          sleep loop_sleep
     }Until Not GetKeyState("s", "P")
   }
    return

#if tgd
$d::
   send d
   sleep sleep_time
if GetKeyState("d", "P"){
loop
{
          send d
          if !GetKeyState("d", "P"){
          break
          }
          send d
          sleep loop_sleep
     }Until Not GetKeyState("d", "P")
   }
    return

#if tgf
$f::
   send f
   sleep sleep_time
if GetKeyState("f", "P"){
loop
{
          send f
          if !GetKeyState("f", "P"){
          break
          }
          send f
          sleep loop_sleep
     }Until Not GetKeyState("f", "P")
   }
    return

#if tgg
$g::
   send g
   sleep sleep_time
if GetKeyState("g", "P"){
loop
{
          send g
          if !GetKeyState("g", "P"){
          break
          }
          send g
          sleep loop_sleep
     }Until Not GetKeyState("g", "P")
   }
    return

#if tgh
$h::
   send h
   sleep sleep_time
if GetKeyState("h", "P"){
loop
{
          send h
          if !GetKeyState("h", "P"){
          break
          }
          send h
          sleep loop_sleep
     }Until Not GetKeyState("h", "P")
   }
    return

#if tgj
$j::
   send j
   sleep sleep_time
if GetKeyState("j", "P"){
loop
{
          send j
          if !GetKeyState("j", "P"){
          break
          }
          send j
          sleep loop_sleep
     }Until Not GetKeyState("j", "P")
   }
    return

#if tgk
$k::
   send k
   sleep sleep_time
if GetKeyState("k", "P"){
loop
{
          send k
          if !GetKeyState("k", "P"){
          break
          }
          send k
          sleep loop_sleep
     }Until Not GetKeyState("k", "P")
   }
    return

#if tgl
$l::
   send l
   sleep sleep_time
if GetKeyState("l", "P"){
loop
{
          send l
          if !GetKeyState("l", "P"){
          break
          }
          send l
          sleep loop_sleep
     }Until Not GetKeyState("l", "P")
   }
    return

#if tgfh
$;::
   send {;}
   sleep sleep_time
if GetKeyState(";", "P"){
loop
{
          send {;}
          if !GetKeyState(";", "P"){
          break
          }
          send {;}
          sleep loop_sleep
     }Until Not GetKeyState(";", "P")
   }
 return
#if tgyh
$'::
   send '
   sleep sleep_time
   if GetKeyState("'", "P"){
loop
{
          send '
          if !GetKeyState("'", "P"){
          break
          }
          send '
          sleep loop_sleep
     }Until Not GetKeyState("'", "P")
   }
    return

#if tgz
$z::
   send z
   sleep sleep_time
 if GetKeyState("z", "P"){
loop
{
          send z
          if !GetKeyState("z", "P"){
          break
          }
          send z
          sleep loop_sleep
     }Until Not GetKeyState("z", "P")
   }
    return

#if tgx
$x::
   send x
   sleep sleep_time
   if GetKeyState("x", "P"){
loop
{
          send x
          if !GetKeyState("x", "P"){
          break
          }
          send x
          sleep loop_sleep
     }Until Not GetKeyState("x", "P")
   }
    return

#if tgc
$c::
   send c
   sleep sleep_time
  if GetKeyState("c", "P"){
loop
{
          send c
          if !GetKeyState("c", "P"){
          break
          }
          send c
          sleep loop_sleep
     }Until Not GetKeyState("c", "P")
   }
    return

#if tgv
$v::
   send v
   sleep sleep_time
   if GetKeyState("v", "P"){
loop
{
          send v
          if !GetKeyState("v", "P"){
          break
          }
          send v
          sleep loop_sleep
     }Until Not GetKeyState("v", "P")
   }
    return

#if tgb
$b::
   send b
   sleep sleep_time
   if GetKeyState("b", "P"){
loop
{
          send b
          if !GetKeyState("b", "P"){
          break
          }
          send b
          sleep loop_sleep
     }Until Not GetKeyState("b", "P")
   }
    return

#if tgn
$n::
   send n
   sleep sleep_time
  if GetKeyState("n", "P"){
loop
{
          send n
          if !GetKeyState("n", "P"){
          break
          }
          send n
          sleep loop_sleep
     }Until Not GetKeyState("n", "P")
   }
    return

#if tgm
$m::
   send m
   sleep sleep_time
   if GetKeyState("m", "P"){
loop
{
          send m
          if !GetKeyState("m", "P"){
          break
          }
          send m
          sleep loop_sleep
     }Until Not GetKeyState("m", "P")
   }
    return

#if tgdouh
$,::
   send {,}
   sleep sleep_time
   if GetKeyState(",", "P"){
loop
{
          send {,}
          if !GetKeyState(",", "P"){
          break
          }
          send {,}
          sleep loop_sleep
     }Until Not GetKeyState(",", "P")
   }
    return

#if tgdianh
$.::
   send .
   sleep sleep_time
   if GetKeyState(".", "P"){
loop
{
          send .
          if !GetKeyState(".", "P"){
          break
          }
          send .
          sleep loop_sleep
     }Until Not GetKeyState(".", "P")
   }
    return

#if tgyxh
$/::
   send /
   sleep sleep_time
   if GetKeyState("/", "P"){
loop
{
          send /
          if !GetKeyState("/", "P"){
          break
          }
          send /
          sleep loop_sleep
     }Until Not GetKeyState("/", "P")
   }
    return

#if tg1
$1::
   send 1
   sleep sleep_time
   if GetKeyState("1", "P"){
loop
{
          send 1
          if !GetKeyState("1", "P"){
          break
          }
          send 1
          sleep loop_sleep
     }Until Not GetKeyState("1", "P")
   }
    return

#if tg2
$2::
   send 2
   sleep sleep_time
  if GetKeyState("2", "P"){
loop
{
          send 2
          if !GetKeyState("2", "P"){
          break
          }
          send 2
          sleep loop_sleep
     }Until Not GetKeyState("2", "P")
   }
    return

#if tg3
$3::
   send 3
   sleep sleep_time
   if GetKeyState("3", "P"){
loop
{
          send 3
          if !GetKeyState("3", "P"){
          break
          }
          send 3
          sleep loop_sleep
     }Until Not GetKeyState("3", "P")
   }
    return

#if tg4
$4::
   send 4
   sleep sleep_time
   if GetKeyState("4", "P"){
loop
{
          send 4
          if !GetKeyState("4", "P"){
          break
          }
          send 4
          sleep loop_sleep
     }Until Not GetKeyState("4", "P")
   }
    return

#if tg5
$5::
   send 5
   sleep sleep_time
  if GetKeyState("5", "P"){
loop
{
          send 5
          if !GetKeyState("5", "P"){
          break
          }
          send 5
          sleep loop_sleep
     }Until Not GetKeyState("5", "P")
   }
    return

#if tg6
$6::
   send 6
   sleep sleep_time
  if GetKeyState("6", "P"){
loop
{
          send 6
          if !GetKeyState("6", "P"){
          break
          }
          send 6
          sleep loop_sleep
     }Until Not GetKeyState("6", "P")
   }
    return

#if tg7
$7::
   send 7
   sleep sleep_time
   if GetKeyState("7", "P"){
loop
{
          send 7
          if !GetKeyState("7", "P"){
          break
          }
          send 7
          sleep loop_sleep
     }Until Not GetKeyState("7", "P")
   }
    return

#if tg8
$8::
   send 8
   sleep sleep_time
  if GetKeyState("8", "P"){
loop
{
          send 8
          if !GetKeyState("8", "P"){
          break
          }
          send 8
          sleep loop_sleep
     }Until Not GetKeyState("8", "P")
   }
    return

#if tg9
$9::
   send 9
   sleep sleep_time
  if GetKeyState("9", "P"){
loop
{
          send 9
          if !GetKeyState("9", "P"){
          break
          }
          send 9
          sleep loop_sleep
     }Until Not GetKeyState("9", "P")
   }
    return

#if tg0
$0::
   send 0
   sleep sleep_time
   if GetKeyState("0", "P"){
loop
{
          send 0
          if !GetKeyState("0", "P"){
          break
          }
          send 0
          sleep loop_sleep
     }Until Not GetKeyState("0", "P")
   }
    return

#if tghh
$-::
   send -
   sleep sleep_time
   if GetKeyState("-", "P"){
loop
{
          send -
          if !GetKeyState("-", "P"){
          break
          }
          send -
          sleep loop_sleep
     }Until Not GetKeyState("-", "P")
   }
    return

#if tgdh
$=::
   send =
   sleep sleep_time
   if GetKeyState("=", "P"){
loop
{
          send =
          if !GetKeyState("=", "P"){
          break
          }
          send =
          sleep loop_sleep
     }Until Not GetKeyState("=", "P")
   }
    return
