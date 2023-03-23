; CapsLock Enchancer (aka Capslock++) All CopyRights Not Reserved
; Features:
; - [x] Press Caps alone and hold less then 150ms ==> Esc (Modify the Threshold as you like)
; - [x] Press Caps alone and hold more then 150ms but less them 1s ==> Caps (Modify the Threshold as you like)
; - [x] Press Caps alone and hold more than 1s ==> Nothing will happen.
; - [x] Press Caps with other keys ==> LCtrl

#NoEnv                      ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance FORCE       ; Skip invocation dialog box and silently replace previously executing instance of this script.
SendMode Input              ; Recommended for new scripts due to its superior speed and reliability.

EscThreshold := 150
CapsThreshold := 1000
g_AbortSendEsc := false


#InstallKeybdHook
SetCapsLockState, alwaysoff
Capslock::
StartTime := A_TickCount
g_DoNotAbortSendEsc := true
Send {LControl Down}
KeyWait, CapsLock
Send {LControl Up}
if ( A_PriorKey = "CapsLock") {
    Interval := A_TickCount - StartTime
	if(g_DoNotAbortSendEsc && (Interval < EscThreshold)) {
		Send {Esc}
	} else if (Interval < CapsThreshold) {
        SetCapsLockState, % (State:=!State) ? "on" : "alwaysoff"
    } else {}
}
return

~*^a::
~*^b::
~*^c::
~*^d::
~*^e::
~*^f::
~*^g::
~*^h::
~*^i::
~*^j::
~*^k::
~*^l::
~*^m::
~*^n::
~*^o::
~*^p::
~*^q::
~*^r::
~*^s::
~*^t::
~*^u::
~*^v::
~*^w::
~*^x::
~*^y::
~*^z::
~*^1::
~*^2::
~*^3::
~*^4::
~*^5::
~*^6::
~*^7::
~*^8::
~*^9::
~*^0::
~*^Space::
~*^Backspace::
~*^Delete::
~*^Insert::
~*^Home::
~*^End::
~*^PgUp::
~*^PgDn::
~*^Tab::
~*^Return::
~*^,::
~*^.::
~*^/::
~*^;::
~*^'::
~*^[::
~*^]::
~*^\::
~*^-::
~*^=::
~*^`::
~*^F1::
~*^F2::
~*^F3::
~*^F4::
~*^F5::
~*^F6::
~*^F7::
~*^F8::
~*^F9::
~*^F10::
~*^F11::
~*^F12::
~*^+::
    g_DoNotAbortSendEsc := false
    return
