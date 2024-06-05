#Requires AutoHotkey v2

;理想情况，是一个切换。按住某键之后，就像vim一样。再切换之后，再回来普通。
;一个糟糕的情况是，这些伪键，无法和其他键组合。比如Home和Shift就无法组合。
;那这个Home键就没有任何意义。
;解决办法，还不清楚。
;但是，还是有点儿用处。先凑合着用好了。
; #HotIf (A_Cursor == "IBeam" || CaretGetPos(&x, &y) && x >= 100)
#+j:: Send "{Down}"
#+k:: Send "{Up}"
#+h:: Send "{Left}"
#+l:: Send "{Right}"
^#+h:: Send "{Ctrl down}{Left}{Ctrl up}"
^#+l:: Send "{Ctrl down}{Right}{Ctrl up}"
!#+h:: Send "{Shift down}{Left}{Shift up}"
!#+l:: Send "{Shift down}{Right}{Shift up}"
;win+shift+alt+ctrl会打开 Microsoft 365 网站。禁用办法：管理员级别的cmd中输入以下命令以修改注册表。参考来源：https://answers.microsoft.com/en-us/msoffice/forum/all/how-to-disable-ctrl-alt-shift-win-shortcuts/77654799-6f8c-484a-be1a-26a2273259c4
^!#+h:: Send "{Ctrl down}{Shift down}{Left}{Shift up}{Ctrl up}"
^!#+l:: Send "{Ctrl down}{Shift down}{Right}{Shift up}{Ctrl up}"

#+u:: Send "{Home}"
#+i:: Send "{End}"
!#+u:: Send "{Shift down}{Home}{Shift up}"
!#+I:: Send "{Shift down}{End}{Shift up}"
^!#+u:: Send "{Ctrl down}{Shift down}{Home}{Shift up}{Ctrl up}"
^!#+I:: Send "{Ctrl down}{Shift down}{End}{Shift up}{Ctrl up}"
^#+u:: Send "{Ctrl down}{Home}{Ctrl up}"
^#+I:: Send "{Ctrl down}{End}{Ctrl up}"

#+o:: Send "{PgUp}"
#+p:: Send "{PgDn}"
#+x:: Send "{Del}"
; ^0::Send "{Home}"
; ^!k::Send "{PgUp}"
; ^o::Send "{End}{Enter}"
; ^!o::Send "{Home}{Enter}{Up}"
; !x::Send "{Del}"
; ^!X::Send "+{End}{Del 2}"
; !d::Send "+^{Left}{Del}"
; ^!d::Send "{Home}{Shift Down}{End}{Shift Up}{Del 2}"
