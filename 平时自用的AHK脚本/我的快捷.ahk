; TODO import 小键盘强化.ahk。这样就不应一个一个启动了。目前还不知道怎么import。

^+w:: ; 快捷退出，可以单手操作，不然Alt+F4跨度很大，有点痛苦。
{
    Send "!{F4}"
}
^#w:: ; 快捷关闭虚拟屏幕。同理，单手操作
{
    Send "^#{F4}"
}

; 我想左手可以触发Home、End。
; 尝试了` & 4 为End，但是这样子的话，就不能输入 ` 了。
; 尝试了~` & 4 为End，但是这样子的话，就会输入 ` 了。
; 尝试了 !` & 1 为Home，但是程序报错

; 有时手不想离开键盘，但是鼠标不得不点一下，于是作此键。
^!#j::{
    Click
}

; TODO 目的是，按两下ctrl呼出Listary，然后启动Everything。
; 但是这个脚本没有成功实现目的，目前还不知道原因。
; 以后随着对AHK的了解加深，再回来解决。
; ^!#e::{
;     Send "{Ctrl down}{Ctrl up}{Ctrl down}{Ctrl up}"
;     SendText "Everything.exe"
;     Send "{Enter}"
; }