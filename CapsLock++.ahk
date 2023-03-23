; CpasLock Enchancer (aka Capslock++) All CopyRights Not Reserved
; Features:
; - [x] Press Caps alone and hold less then 150ms ==> Esc (Modify the Threshold as you like)
; - [x] Press Caps alone and hold more then 150ms ==> Caps (Modify the Threshold as you like)
; - [x] Press Caps with other keys ==> LCtrl

#NoEnv                      ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance FORCE       ; Skip invocation dialog box and silently replace previously executing instance of this script.
SendMode Input              ; Recommended for new scripts due to its superior speed and reliability.

Threshold := 150
g_AbortSendEsc := false

#InstallKeybdHook
SetCapsLockState, alwaysoff
Capslock::
StartTime := A_TickCount
g_DoNotAbortSendEsc := true
Send {LControl Down}
KeyWait, CapsLock
Send {LControl Up}
if ( A_PriorKey = "CapsLock")
{
	if(g_DoNotAbortSendEsc && (A_TickCount - StartTime < Threshold)) {
		Send {Esc}
	} Else {
        SetCapsLockState, % (State:=!State) ? "on" : "alwaysoff"
    }
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
    g_DoNotAbortSendEsc := false
    return
