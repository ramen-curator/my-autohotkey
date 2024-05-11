#Requires AutoHotkey v2

;理想情况，是一个切换。按住某键之后，就像vim一样。再切换之后，再回来普通。
;一个糟糕的情况是，这些伪键，无法和其他键组合。比如Home和Shift就无法组合。
;那这个Home键就没有任何意义。
;解决办法，还不清楚。
;但是，还是有点儿用处。先凑合着用好了。
; #HotIf (A_Cursor == "IBeam" || CaretGetPos(&x, &y) && x >= 100)
    #+j::Send "{Down}"
    #+h::Send "{Left}"
    #+k::Send "{Up}"
    #+l::Send "{Right}"
    #+u::Send "{Home}"
    #+i::Send "{End}"
    #+o::Send "{PgUp}"
    #+p::Send "{PgDn}"
    #+x::Send "{Del}"
    ; ^0::Send "{Home}"
    ; ^!k::Send "{PgUp}"
    ; ^o::Send "{End}{Enter}"
    ; ^!o::Send "{Home}{Enter}{Up}"
    ; !x::Send "{Del}"
    ; ^!X::Send "+{End}{Del 2}"
    ; !d::Send "+^{Left}{Del}"
    ; ^!d::Send "{Home}{Shift Down}{End}{Shift Up}{Del 2}"
