#Requires AutoHotkey v2.0

^Numpad0:: ; 左边的数字键如果到五六七，就不好按。干脆把小键盘用上。
{
    Send "^0"
}
^Numpad1::
{
    Send "^1"
}
^Numpad2::
{
    Send "^2"
}
^Numpad3::
{
    Send "^3"
}
^Numpad4::
{
    Send "^4"
}
^Numpad5::
{
    Send "^5"
}
^Numpad6::
{
    Send "^6"
}
^Numpad7::
{
    Send "^7"
}
^Numpad8::
{
    Send "^8"
}
^Numpad9::
{
    Send "^9"
}

!Numpad0:: ; 左边的数字键如果到五六七，就不好按。干脆把小键盘用上。
{
    Send "!0"
}
!Numpad1::
{
    Send "!1"
}
!Numpad2::
{
    Send "!2"
}
!Numpad3::
{
    Send "!3"
}
!Numpad4::
{
    Send "!4"
}
!Numpad5::
{
    Send "!5"
}
!Numpad6::
{
    Send "!6"
}
!Numpad7::
{
    Send "!7"
}
!Numpad8::
{
    Send "!8"
}
!Numpad9::
{
    Send "!9"
}

; TODO win+小键盘
; 按住win的时候，按数字1，激活第一个程序的窗口1。
; 此时松开数字1，再按数字1的时候，应激活第一个程序的窗口2。
; 但没有成功。还不知道怎么处理。先放着。