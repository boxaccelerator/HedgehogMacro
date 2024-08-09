#SingleInstance, Force

SetWorkingDir, % A_ScriptDir

Gui, HMLoader:New, +AlwaysOnTop -Border -Caption -MaximizeBox -MinimizeBox -Resize -Theme, Hedgehog Macro Loader
Gui, Font, s7, Segoe UI
Gui, Add, Text, vGuiTitle x7 y0 w400 h15, Hedgehog Macro Loader
Gui, Font, s20, Segoe UI
Gui, Add, Text, vMainText x8 y15 w400 h35, #0, Starting launching process
Gui, Font, s10, Segoe UI
Gui, Add, Text, vMainSubtext x8 y50 w400 h20, Waiting for request
Gui, Show
Gui, Flash
GuiControl,, MainText, #0, Wait until loaded
GuiControl,, MainSubtext, Checking main part
Sleep, 1000
GuiControl,, MainSubtext, Loading main part
GuiControl,, MainText, #1, Wait 1s
Sleep, 1000
GuiControl,, MainText, #1, Wait 0s
Sleep, 1000
GuiControl,, MainText, #2, Starting
GuiControl,, MainSubtext, Starting main part
Sleep, 100
GuiControl,, MainText, #3, Wait until loaded
GuiControl,, MainSubtext, Click "Yes"
RunWait, %A_ScriptDir%\Main.ahk
GuiControl,, MainText, #4, Running
GuiControl,, MainSubtext, Started main part
Sleep, 100
GuiControl,, MainText, #5, Creating menu
GuiControl,, MainSubtext, Waiting for main part
Sleep, 100
GuiControl,, MainText, #6, Wait until loaded
GuiControl,, MainSubtext, Main part creating menu
Sleep, 1000
GuiControl,, MainText, #7, Finishing
GuiControl,, MainSubtext, If the menu hasn't loaded yet, just wait!
Sleep, 1000
ExitApp