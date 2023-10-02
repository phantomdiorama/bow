#Requires AutoHotkey v2.0
if FileExist("bow.ico")
    TraySetIcon  "bow.ico"

; gui setup
App := Gui()
App.BackColor := "800080"
App.Title := "Bow"
App.SetFont("s18 cBlack")
App.AddText("w300","Colour copied to clipboard")
App.SetFont("s18 cWhite")
App.AddText("w300","Colour copied to clipboard")

; hotkey
!mbutton::
{
App.Show()
}
