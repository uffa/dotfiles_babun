;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Key Remapping for Terminal Window (mintty)
; Configuration for Windows Application "Auto Hot Key"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; # Win
; ! Alt
; ^ Control
; + Shift

#IfWinActive ahk_class mintty
^c::Send {LCtrl down}{Insert}{LCtrl up}			; remap standard copy 	= control insert (window specific copy)
^v::Send {LShift down}{Insert}{LShift up}		; remap standard paste  = shift insert  (window specific paste)
^d::Send {LCtrl}								; remap control d to nothing; default is delete and will cause window to exit