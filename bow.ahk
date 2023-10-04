#Requires AutoHotkey v2.0
if FileExist("bow.ico")
    TraySetIcon  "bow.ico"

; gui setup
App := Gui("+AlwaysOnTop -MinimizeBox")
App.Title := "Bow"
App.SetFont("s18 cBlack")
App.AddText("w300","Colour copied to clipboard")
App.SetFont("s18 cWhite")
App.AddText("w300","Colour copied to clipboard")

; hotkey
#LButton::
#mbutton::
{
    MouseGetPos &xpos, &ypos
    Color := PixelGetColor(xpos, ypos)
    Hex := SubStr(Color, 3)
    A_Clipboard := Hex
    App.BackColor := Hex
    App.Show()
}
