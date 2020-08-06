;SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
;SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force
#NoEnv
;#Warn
SetBatchLines -1
SendMode Input
#Persistent
#IfWinActive, ahk_class D3 Main Window Class

;------------ VERSION ------------

Global Version := "1.4"
CheckNewVersion()   ;Comment out or Delete this line if you dont want the Script to notify you on a new Update
;------------ Variable ------------
global Hotkeys := "q|w|e|r|t|z|u|i|o|p|a|s|d|f|g|h|j|k|l|y|x|c|v|b|n|m|1|2|3|4|5|6|7|8|9|0|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|LButton|RButton|Space|Shift|XButton1|XButton2"
global 1HK
global 2HK
global 3HK
global 4HK
global LmausHK
global RmausHK
global MoveHK

global SchmiedHK
global UrshiHK
global KadalaHK

global EnableDisableHK
global StartStopHK

global Schak
global Ursak
global Kadak
global Alle
global Gamble

global Time1
global Time2
global Time3
global Time4
global Time5
global Time6
global Time7

global H1
global H2
global H3
global H4
global H5
global H6
global H7

global PotHK
global Pot

global Profil1
global Profil2
global Profil3
global Profil4


;--------------Iniread------------
iniRead, Profil1, C:\ProgramData\settings.ini, Profil, Profil1, 1
iniRead, Profil2, C:\ProgramData\settings.ini, Profil, Profil2, 0
iniRead, Profil3, C:\ProgramData\settings.ini, Profil, Profil3, 0
iniRead, Profil4, C:\ProgramData\settings.ini, Profil, Profil4, 0

if (Profil1)
{
iniRead, gui_position, C:\ProgramData\settings.ini, window position, gui_position, Center

IniRead, 1HK,  C:\ProgramData\settings.ini, Keys, 1HK, 1
IniRead, 2HK,  C:\ProgramData\settings.ini, Keys, 2HK, 2
IniRead, 3HK,  C:\ProgramData\settings.ini, Keys, 3HK, 3
IniRead, 4HK,  C:\ProgramData\settings.ini, Keys, 4HK, 4
IniRead, LmausHK,  C:\ProgramData\settings.ini, Keys, LmausHK, LButton
IniRead, RmausHK,  C:\ProgramData\settings.ini, Keys, RmausHK, RButton
IniRead, MoveHK,  C:\ProgramData\settings.ini, Keys, moveHK, h

IniRead, SchmiedHK,  C:\ProgramData\settings.ini, Town, SchmiedHK, F2
IniRead, UrshiHK,  C:\ProgramData\settings.ini, Town, UrshiHK, F3
IniRead, KadalaHK,  C:\ProgramData\settings.ini, Town, KadalaHK, F4

iniRead, Schak, C:\ProgramData\settings.ini, Town, Schak, 0
iniRead, Ursak, C:\ProgramData\settings.ini, Town, Ursak, 0
iniRead, Kadak, C:\ProgramData\settings.ini, Town, Kadak, 0
iniRead, Alle, C:\ProgramData\settings.ini, Town, Alle, 0
iniRead, Gamble, C:\ProgramData\settings.ini, Town, Gamble, 1-H Weapon 

iniRead, Time1, C:\ProgramData\settings.ini, Time, Time1, 100
iniRead, Time2, C:\ProgramData\settings.ini, Time, Time2, 200
iniRead, Time3, C:\ProgramData\settings.ini, Time, Time3, 300
iniRead, Time4, C:\ProgramData\settings.ini, Time, Time4, 400
iniRead, Time5, C:\ProgramData\settings.ini, Time, Time5, 500
iniRead, Time6, C:\ProgramData\settings.ini, Time, Time6, 600
iniRead, Time7, C:\ProgramData\settings.ini, Time, Time7, 700

iniRead, H1, C:\ProgramData\settings.ini, Aktiv, H1, 1
iniRead, H2, C:\ProgramData\settings.ini, Aktiv, H2, 2
iniRead, H3, C:\ProgramData\settings.ini, Aktiv, H3, 3
iniRead, H4, C:\ProgramData\settings.ini, Aktiv, H4, 4
iniRead, H5, C:\ProgramData\settings.ini, Aktiv, H5, 5
iniRead, H6, C:\ProgramData\settings.ini, Aktiv, H6, 6
iniRead, H7, C:\ProgramData\settings.ini, Aktiv, H7, 7

iniRead, PotHK, C:\ProgramData\settings.ini, Keys, PotHK, Q
iniRead, Pot, C:\ProgramData\settings.ini, Aktiv, Pot, 1

IniRead, EnableDisableHK,  C:\ProgramData\settings.ini, Settings, EnableDisableHK, F6
IniRead, StartStopHK,  C:\ProgramData\settings.ini, Settings, StartStopHK, F1
}
if (Profil2)
{
iniRead, gui_position, C:\ProgramData\settings.ini, window position, gui_position, Center

IniRead, 1HK,  C:\ProgramData\settings.ini, Keys, 1HK2, 1
IniRead, 2HK,  C:\ProgramData\settings.ini, Keys, 2HK2, 2
IniRead, 3HK,  C:\ProgramData\settings.ini, Keys, 3HK2, 3
IniRead, 4HK,  C:\ProgramData\settings.ini, Keys, 4HK2, 4
IniRead, LmausHK,  C:\ProgramData\settings.ini, Keys, LmausHK2, LButton
IniRead, RmausHK,  C:\ProgramData\settings.ini, Keys, RmausHK2, RButton
IniRead, MoveHK,  C:\ProgramData\settings.ini, Keys, moveHK2, h

IniRead, SchmiedHK,  C:\ProgramData\settings.ini, Town, SchmiedHK2, F2
IniRead, UrshiHK,  C:\ProgramData\settings.ini, Town, UrshiHK2, F3
IniRead, KadalaHK,  C:\ProgramData\settings.ini, Town, KadalaHK2, F4

iniRead, Schak, C:\ProgramData\settings.ini, Town, Schak2, 0
iniRead, Ursak, C:\ProgramData\settings.ini, Town, Ursak2, 0
iniRead, Kadak, C:\ProgramData\settings.ini, Town, Kadak2, 0
iniRead, Alle, C:\ProgramData\settings.ini, Town, Alle2, 0
iniRead, Gamble, C:\ProgramData\settings.ini, Town, Gamble2, 1-H Weapon 

iniRead, Time1, C:\ProgramData\settings.ini, Time, Time12, 100
iniRead, Time2, C:\ProgramData\settings.ini, Time, Time22, 200
iniRead, Time3, C:\ProgramData\settings.ini, Time, Time32, 300
iniRead, Time4, C:\ProgramData\settings.ini, Time, Time42, 400
iniRead, Time5, C:\ProgramData\settings.ini, Time, Time52, 500
iniRead, Time6, C:\ProgramData\settings.ini, Time, Time62, 600
iniRead, Time7, C:\ProgramData\settings.ini, Time, Time72, 700

iniRead, H1, C:\ProgramData\settings.ini, Aktiv, H12, 1
iniRead, H2, C:\ProgramData\settings.ini, Aktiv, H22, 2
iniRead, H3, C:\ProgramData\settings.ini, Aktiv, H32, 3
iniRead, H4, C:\ProgramData\settings.ini, Aktiv, H42, 4
iniRead, H5, C:\ProgramData\settings.ini, Aktiv, H52, 5
iniRead, H6, C:\ProgramData\settings.ini, Aktiv, H62, 6
iniRead, H7, C:\ProgramData\settings.ini, Aktiv, H72, 7

iniRead, PotHK, C:\ProgramData\settings.ini, Keys, PotHK2, Q
iniRead, Pot, C:\ProgramData\settings.ini, Aktiv, Pot2, 1

IniRead, EnableDisableHK,  C:\ProgramData\settings.ini, Settings, EnableDisableHK, F6
IniRead, StartStopHK,  C:\ProgramData\settings.ini, Settings, StartStopHK, F1
}
if (Profil3)
{
iniRead, gui_position, C:\ProgramData\settings.ini, window position, gui_position, Center

IniRead, 1HK,  C:\ProgramData\settings.ini, Keys, 1HK3, 1
IniRead, 2HK,  C:\ProgramData\settings.ini, Keys, 2HK3, 2
IniRead, 3HK,  C:\ProgramData\settings.ini, Keys, 3HK3, 3
IniRead, 4HK,  C:\ProgramData\settings.ini, Keys, 4HK3, 4
IniRead, LmausHK,  C:\ProgramData\settings.ini, Keys, LmausHK3, LButton
IniRead, RmausHK,  C:\ProgramData\settings.ini, Keys, RmausHK3, RButton
IniRead, MoveHK,  C:\ProgramData\settings.ini, Keys, moveHK3, h

IniRead, SchmiedHK,  C:\ProgramData\settings.ini, Town, SchmiedHK3, F2
IniRead, UrshiHK,  C:\ProgramData\settings.ini, Town, UrshiHK3, F3
IniRead, KadalaHK,  C:\ProgramData\settings.ini, Town, KadalaHK3, F4

iniRead, Schak, C:\ProgramData\settings.ini, Town, Schak3, 0
iniRead, Ursak, C:\ProgramData\settings.ini, Town, Ursak3, 0
iniRead, Kadak, C:\ProgramData\settings.ini, Town, Kadak3, 0
iniRead, Alle, C:\ProgramData\settings.ini, Town, Alle3, 0
iniRead, Gamble, C:\ProgramData\settings.ini, Town, Gamble3, 1-H Weapon 

iniRead, Time1, C:\ProgramData\settings.ini, Time, Time13, 100
iniRead, Time2, C:\ProgramData\settings.ini, Time, Time23, 200
iniRead, Time3, C:\ProgramData\settings.ini, Time, Time33, 300
iniRead, Time4, C:\ProgramData\settings.ini, Time, Time43, 400
iniRead, Time5, C:\ProgramData\settings.ini, Time, Time53, 500
iniRead, Time6, C:\ProgramData\settings.ini, Time, Time63, 600
iniRead, Time7, C:\ProgramData\settings.ini, Time, Time73, 700

iniRead, H1, C:\ProgramData\settings.ini, Aktiv, H13, 1
iniRead, H2, C:\ProgramData\settings.ini, Aktiv, H23, 2
iniRead, H3, C:\ProgramData\settings.ini, Aktiv, H33, 3
iniRead, H4, C:\ProgramData\settings.ini, Aktiv, H43, 4
iniRead, H5, C:\ProgramData\settings.ini, Aktiv, H53, 5
iniRead, H6, C:\ProgramData\settings.ini, Aktiv, H63, 6
iniRead, H7, C:\ProgramData\settings.ini, Aktiv, H73, 7

iniRead, PotHK, C:\ProgramData\settings.ini, Keys, PotHK3, Q
iniRead, Pot, C:\ProgramData\settings.ini, Aktiv, Pot3, 1

IniRead, EnableDisableHK,  C:\ProgramData\settings.ini, Settings, EnableDisableHK, F6
IniRead, StartStopHK,  C:\ProgramData\settings.ini, Settings, StartStopHK, F1
}
if (Profil4)
{
iniRead, gui_position, C:\ProgramData\settings.ini, window position, gui_position, Center

IniRead, 1HK,  C:\ProgramData\settings.ini, Keys, 1HK4, 1
IniRead, 2HK,  C:\ProgramData\settings.ini, Keys, 2HK4, 2
IniRead, 3HK,  C:\ProgramData\settings.ini, Keys, 3HK4, 3
IniRead, 4HK,  C:\ProgramData\settings.ini, Keys, 4HK4, 4
IniRead, LmausHK,  C:\ProgramData\settings.ini, Keys, LmausHK4, LButton
IniRead, RmausHK,  C:\ProgramData\settings.ini, Keys, RmausHK4, RButton
IniRead, MoveHK,  C:\ProgramData\settings.ini, Keys, moveHK4, h

IniRead, SchmiedHK,  C:\ProgramData\settings.ini, Town, SchmiedHK4, F2
IniRead, UrshiHK,  C:\ProgramData\settings.ini, Town, UrshiHK4, F3
IniRead, KadalaHK,  C:\ProgramData\settings.ini, Town, KadalaHK4, F4

iniRead, Schak, C:\ProgramData\settings.ini, Town, Schak4, 0
iniRead, Ursak, C:\ProgramData\settings.ini, Town, Ursak4, 0
iniRead, Kadak, C:\ProgramData\settings.ini, Town, Kadak4, 0
iniRead, Alle, C:\ProgramData\settings.ini, Town, Alle4, 0
iniRead, Gamble, C:\ProgramData\settings.ini, Town, Gamble4, 1-H Weapon 

iniRead, Time1, C:\ProgramData\settings.ini, Time, Time14, 100
iniRead, Time2, C:\ProgramData\settings.ini, Time, Time24, 200
iniRead, Time3, C:\ProgramData\settings.ini, Time, Time34, 300
iniRead, Time4, C:\ProgramData\settings.ini, Time, Time44, 400
iniRead, Time5, C:\ProgramData\settings.ini, Time, Time54, 500
iniRead, Time6, C:\ProgramData\settings.ini, Time, Time64, 600
iniRead, Time7, C:\ProgramData\settings.ini, Time, Time74, 700

iniRead, H1, C:\ProgramData\settings.ini, Aktiv, H14, 1
iniRead, H2, C:\ProgramData\settings.ini, Aktiv, H24, 2
iniRead, H3, C:\ProgramData\settings.ini, Aktiv, H34, 3
iniRead, H4, C:\ProgramData\settings.ini, Aktiv, H44, 4
iniRead, H5, C:\ProgramData\settings.ini, Aktiv, H54, 5
iniRead, H6, C:\ProgramData\settings.ini, Aktiv, H64, 6
iniRead, H7, C:\ProgramData\settings.ini, Aktiv, H74, 7

iniRead, PotHK, C:\ProgramData\settings.ini, Keys, PotHK4, Q
iniRead, Pot, C:\ProgramData\settings.ini, Aktiv, Pot4, 1

IniRead, EnableDisableHK,  C:\ProgramData\settings.ini, Settings, EnableDisableHK, F6
IniRead, StartStopHK,  C:\ProgramData\settings.ini, Settings, StartStopHK, F1
}

HotKey, %SchmiedHK%, Schmied
HotKey, %UrshiHK%, Urshi
HotKey, %KadalaHK%, Kadala

HotKey, %StartStopHK%, StartStop
HotKey, %EnableDisableHK%, EnableDisable
HotKey, %StartStopHK%, Off

;---------------------------------

Gui -MinimizeBox -MaximizeBox

Gui Add, GroupBox, x5 y0 w275 h230, Skills
Gui Add, GroupBox, x5 y225 w326 h145, Town

Gui, Add, CheckBox, x12 y16 w100 h20 vH1 Checked%H1%,  1
Gui, Add, CheckBox, x12 y39 w100 h30 vH2 Checked%H2%, 2
Gui, Add, CheckBox, x12 y69 w100 h30 vH3 Checked%H3%, 3
Gui, Add, CheckBox, x12 y99 w100 h30 vH4 Checked%H4%, 4
Gui, Add, CheckBox, x12 y129 w100 h30 vH5 Checked%H5%, Lmaus
Gui, Add, CheckBox, x12 y159 w100 h30 vH6 Checked%H6%, Rmaus
Gui, Add, CheckBox, x12 y189 w100 h30 vH7 Checked%H7%, Move

Gui, Add, CheckBox, x12 y239 w100 h30 vSchak Checked%Schak%, Schmied
Gui, Add, CheckBox, x12 y272 w100 h30 vUrsak Checked%Ursak%, Urshi
Gui, Add, CheckBox, x12 y299 w80 h30 vKadak Checked%Kadak%, Kadala
Gui, Add, CheckBox, x227 y245 w100 h30 vAlle Checked%Alle%, Alle Spalten Schrotten
Gui, Add, CheckBox, x12 y335 w100 h30 vPot Checked%Pot%, Auto Pot

Gui Add, CheckBox, vHotKeysActive x230 y395 w120 h22 +Disabled, Hotkeys Active

Gui, Add, DropDownList, v1HK x112 y19 w100  +Uppercase, %Hotkeys%|%1HK%||
Gui, Add, DropDownList, v2HK x112 y49 w100  +Uppercase, %Hotkeys%|%2HK%||
Gui, Add, DropDownList, v3HK x112 y79 w100  +Uppercase, %Hotkeys%|%3HK%||
Gui, Add, DropDownList, v4HK x112 y109 w100  +Uppercase, %Hotkeys%|%4HK%||
Gui, Add, DropDownList, vLmausHK x112 y139 w100  +Uppercase, %Hotkeys%|%LmausHK%||
Gui, Add, DropDownList, vRmausHK x112 y169 w100  +Uppercase, %Hotkeys%|%RmausHK%||
Gui, Add, DropDownList, vmoveHK x112 y199 w100  +Uppercase, %Hotkeys%|%moveHK%||
Gui, Add, DropDownList, vSchmiedHK x112 y249 w100  +Uppercase, %Hotkeys%|%SchmiedHK%||
Gui, Add, DropDownList, vUrshiHK x112 y279 w100  +Uppercase, %Hotkeys%|%UrshiHK%||
Gui, Add, DropDownList, vKadalaHK x112 y309 w100  +Uppercase, %Hotkeys%|%KadalaHK%||
Gui, Add, DropDownList, vPotHK x112 y340 w100  +Uppercase, %Hotkeys%|%PotHK%||

Gui, Add, Button,gSave x12 y465 w100 h30 , Save
Gui, Add, Button,ginfo x212 y465 w100 h30 , Info
Gui, Add, Button,gbutton1 x112 y465 w100 h30 , Reload

Gui, Add, Edit, Limit5 Number vTime1 x222 y22 w40 h15 , %Time1%
Gui, Add, Edit, Limit5 Number vTime2 x222 y52 w40 h15 , %Time2%
Gui, Add, Edit, Limit5 Number vTime3 x222 y82 w40 h15 , %Time3%
Gui, Add, Edit, Limit5 Number vTime4 x222 y112 w40 h15 , %Time4%
Gui, Add, Edit, Limit5 Number vTime5 x222 y142 w40 h15 , %Time5%
Gui, Add, Edit, Limit5 Number vTime6 x222 y172 w40 h15 , %Time6%
Gui, Add, Edit, Limit5 Number vTime7 x222 y202 w40 h15 , %Time7%

Gui, Add, Radio, vprofil1 x342 y9 w100 h20 Checked%Profil1% , Profil 1
Gui, Add, Radio, vprofil2 x342 y29 w100 h20 Checked%Profil2% , Profil 2
Gui, Add, Radio, vprofil3 x342 y49 w100 h20 Checked%Profil3% , Profil 3
Gui, Add, Radio, vprofil4 x342 y69 w100 h20 Checked%Profil4% , Profil 4

Gui Add, Text, x12 y400 w50 +0x200, Enable/Disable
Gui Add, Text, x12 y420 w50 +0x200, Start/Stop
Gui Add, DropDownList, vEnableDisableHK x92 y395 w120  +Uppercase, %Hotkeys%|%EnableDisableHK%||
Gui Add, DropDownList, vStartStopHK x92 y420 w120  +Uppercase, %Hotkeys%|%StartStopHK%||

;Gui, Add, DropDownList, x222 y309 w100 vGamble, 1-H Weapon||2-H Weapon|Quiver|Orb|Mojo|Phylactery|Helm|Gloves|Boots|Armor|Belt|Shoulders|Pants|Bracers|Shield|Ring|Amulet|%Gamble%||

Gui Add, StatusBar,, by Noct, NotNoct  | Version: %Version%
Gui Show, %gui_position% h520 w440, D3 Noct Helper
return

Save(CtrlHwnd, GuiEvent, EventInfo, ErrLevel := "") {
    
    Gui, Submit, NoHide

    GuiControlGet, 1HK
    GuiControlGet, 2HK
    GuiControlGet, 3HK
    GuiControlGet, 4HK
    GuiControlGet, LmausHK
    GuiControlGet, RmausHK
    GuiControlGet, MoveHK

    GuiControlGet, SchmiedHK
    GuiControlGet, UrshiHK
    GuiControlGet, KadalaHK
    GuiControlGet, EnableDisableHK
    GuiControlGet, StartStopHK
    
    GuiControlGet, Schak
    GuiControlGet, Ursak
    GuiControlGet, Kadak
    GuiControlGet, Alle
    GuiControlGet, Gamble
    
    GuiControlGet, Time1
    GuiControlGet, Time2
    GuiControlGet, Time3
    GuiControlGet, Time4
    GuiControlGet, Time5
    GuiControlGet, Time6
    GuiControlGet, Time7

    GuiControlGet, H1
    GuiControlGet, H2
    GuiControlGet, H3
    GuiControlGet, H4
    GuiControlGet, H5
    GuiControlGet, H6
    GuiControlGet, H7
    GuiControlGet, PotHK
    GuiControlGet, Pot

    GuiControlGet, Profil1
    GuiControlGet, Profil2
    GuiControlGet, Profil3
    GuiControlGet, Profil4

if (Profil1)
{
    IniWrite, %1HK%, C:\ProgramData\settings.ini, Keys, 1HK
    IniWrite, %2HK%, C:\ProgramData\settings.ini, Keys, 2HK
    IniWrite, %3HK%, C:\ProgramData\settings.ini, Keys, 3HK
    IniWrite, %4HK%, C:\ProgramData\settings.ini, Keys, 4HK
    IniWrite, %LmausHK%, C:\ProgramData\settings.ini, Keys, LmausHK
    IniWrite, %RmausHK%, C:\ProgramData\settings.ini, Keys, RmausHK
    IniWrite, %MoveHK%, C:\ProgramData\settings.ini, Keys, MoveHK

    IniWrite, %SchmiedHK%, C:\ProgramData\settings.ini, Town, SchmiedHK
    IniWrite, %UrshiHK%, C:\ProgramData\settings.ini, Town, UrshiHK
    IniWrite, %KadalaHK%, C:\ProgramData\settings.ini, Town, KadalaHK

    IniWrite, %Schak%, C:\ProgramData\settings.ini, Town, Schak
    IniWrite, %Ursak%, C:\ProgramData\settings.ini, Town, Ursak
    IniWrite, %Kadak%, C:\ProgramData\settings.ini, Town, Kadak
    IniWrite, %Alle%, C:\ProgramData\settings.ini, Town, Alle
    IniWrite, %Gamble%, C:\ProgramData\settings.ini, Town, Gamble

    IniWrite, %Time1%, C:\ProgramData\settings.ini, Time, Time1
    IniWrite, %Time2%, C:\ProgramData\settings.ini, Time, Time2
    IniWrite, %Time3%, C:\ProgramData\settings.ini, Time, Time3
    IniWrite, %Time4%, C:\ProgramData\settings.ini, Time, Time4
    IniWrite, %Time5%, C:\ProgramData\settings.ini, Time, Time5
    IniWrite, %Time6%, C:\ProgramData\settings.ini, Time, Time6
    IniWrite, %Time7%, C:\ProgramData\settings.ini, Time, Time7

    IniWrite, %H1%, C:\ProgramData\settings.ini, Aktiv, H1
    IniWrite, %H2%, C:\ProgramData\settings.ini, Aktiv, H2
    IniWrite, %H3%, C:\ProgramData\settings.ini, Aktiv, H3
    IniWrite, %H4%, C:\ProgramData\settings.ini, Aktiv, H4
    IniWrite, %H5%, C:\ProgramData\settings.ini, Aktiv, H5
    IniWrite, %H6%, C:\ProgramData\settings.ini, Aktiv, H6
    IniWrite, %H7%, C:\ProgramData\settings.ini, Aktiv, H7

    IniWrite, %PotHK%, C:\ProgramData\settings.ini, Keys, PotHK
    IniWrite, %Pot%, C:\ProgramData\settings.ini, Aktiv, Pot
    
    IniWrite, %Profil1%, C:\ProgramData\settings.ini, Profil, Profil1
    IniWrite, %Profil2%, C:\ProgramData\settings.ini, Profil, Profil2

    IniWrite, %EnableDisableHK%, C:\ProgramData\settings.ini, Settings, EnableDisableHK
    IniWrite, %StartStopHK%, C:\ProgramData\settings.ini, Settings, StartStopHK
}
if (Profil2){
    IniWrite, %1HK%, C:\ProgramData\settings.ini, Keys, 1HK2
    IniWrite, %2HK%, C:\ProgramData\settings.ini, Keys, 2HK2
    IniWrite, %3HK%, C:\ProgramData\settings.ini, Keys, 3HK2
    IniWrite, %4HK%, C:\ProgramData\settings.ini, Keys, 4HK2
    IniWrite, %LmausHK%, C:\ProgramData\settings.ini, Keys, LmausHK2
    IniWrite, %RmausHK%, C:\ProgramData\settings.ini, Keys, RmausHK2
    IniWrite, %MoveHK%, C:\ProgramData\settings.ini, Keys, MoveHK2

    IniWrite, %SchmiedHK%, C:\ProgramData\settings.ini, Town, SchmiedHK2
    IniWrite, %UrshiHK%, C:\ProgramData\settings.ini, Town, UrshiHK2
    IniWrite, %KadalaHK%, C:\ProgramData\settings.ini, Town, KadalaHK2

    IniWrite, %Schak%, C:\ProgramData\settings.ini, Town, Schak2
    IniWrite, %Ursak%, C:\ProgramData\settings.ini, Town, Ursak2
    IniWrite, %Kadak%, C:\ProgramData\settings.ini, Town, Kadak2
    IniWrite, %Alle%, C:\ProgramData\settings.ini, Town, Alle2
    IniWrite, %Gamble%, C:\ProgramData\settings.ini, Town, Gamble2

    IniWrite, %Time1%, C:\ProgramData\settings.ini, Time, Time12
    IniWrite, %Time2%, C:\ProgramData\settings.ini, Time, Time22
    IniWrite, %Time3%, C:\ProgramData\settings.ini, Time, Time32
    IniWrite, %Time4%, C:\ProgramData\settings.ini, Time, Time42
    IniWrite, %Time5%, C:\ProgramData\settings.ini, Time, Time52
    IniWrite, %Time6%, C:\ProgramData\settings.ini, Time, Time62
    IniWrite, %Time7%, C:\ProgramData\settings.ini, Time, Time72

    IniWrite, %H1%, C:\ProgramData\settings.ini, Aktiv, H12
    IniWrite, %H2%, C:\ProgramData\settings.ini, Aktiv, H22
    IniWrite, %H3%, C:\ProgramData\settings.ini, Aktiv, H32
    IniWrite, %H4%, C:\ProgramData\settings.ini, Aktiv, H42
    IniWrite, %H5%, C:\ProgramData\settings.ini, Aktiv, H52
    IniWrite, %H6%, C:\ProgramData\settings.ini, Aktiv, H62
    IniWrite, %H7%, C:\ProgramData\settings.ini, Aktiv, H72

    IniWrite, %PotHK%, C:\ProgramData\settings.ini, Keys, PotHK2
    IniWrite, %Pot%, C:\ProgramData\settings.ini, Aktiv, Pot2
    
    IniWrite, %Profil1%, C:\ProgramData\settings.ini, Profil, Profil1
    IniWrite, %Profil2%, C:\ProgramData\settings.ini, Profil, Profil2

    IniWrite, %EnableDisableHK%, C:\ProgramData\settings.ini, Settings, EnableDisableHK
    IniWrite, %StartStopHK%, C:\ProgramData\settings.ini, Settings, StartStopHK
}
if (Profil3)
{
    IniWrite, %1HK%, C:\ProgramData\settings.ini, Keys, 1HK3
    IniWrite, %2HK%, C:\ProgramData\settings.ini, Keys, 2HK3
    IniWrite, %3HK%, C:\ProgramData\settings.ini, Keys, 3HK3
    IniWrite, %4HK%, C:\ProgramData\settings.ini, Keys, 4HK3
    IniWrite, %LmausHK%, C:\ProgramData\settings.ini, Keys, LmausHK3
    IniWrite, %RmausHK%, C:\ProgramData\settings.ini, Keys, RmausHK3
    IniWrite, %MoveHK%, C:\ProgramData\settings.ini, Keys, MoveHK3

    IniWrite, %SchmiedHK%, C:\ProgramData\settings.ini, Town, SchmiedHK3
    IniWrite, %UrshiHK%, C:\ProgramData\settings.ini, Town, UrshiHK3
    IniWrite, %KadalaHK%, C:\ProgramData\settings.ini, Town, KadalaHK3

    IniWrite, %Schak%, C:\ProgramData\settings.ini, Town, Schak3
    IniWrite, %Ursak%, C:\ProgramData\settings.ini, Town, Ursak3
    IniWrite, %Kadak%, C:\ProgramData\settings.ini, Town, Kadak3
    IniWrite, %Alle%, C:\ProgramData\settings.ini, Town, Alle3
    IniWrite, %Gamble%, C:\ProgramData\settings.ini, Town, Gamble3

    IniWrite, %Time1%, C:\ProgramData\settings.ini, Time, Time13
    IniWrite, %Time2%, C:\ProgramData\settings.ini, Time, Time23
    IniWrite, %Time3%, C:\ProgramData\settings.ini, Time, Time33
    IniWrite, %Time4%, C:\ProgramData\settings.ini, Time, Time43
    IniWrite, %Time5%, C:\ProgramData\settings.ini, Time, Time53
    IniWrite, %Time6%, C:\ProgramData\settings.ini, Time, Time63
    IniWrite, %Time7%, C:\ProgramData\settings.ini, Time, Time73

    IniWrite, %H1%, C:\ProgramData\settings.ini, Aktiv, H13
    IniWrite, %H2%, C:\ProgramData\settings.ini, Aktiv, H23
    IniWrite, %H3%, C:\ProgramData\settings.ini, Aktiv, H33
    IniWrite, %H4%, C:\ProgramData\settings.ini, Aktiv, H43
    IniWrite, %H5%, C:\ProgramData\settings.ini, Aktiv, H53
    IniWrite, %H6%, C:\ProgramData\settings.ini, Aktiv, H63
    IniWrite, %H7%, C:\ProgramData\settings.ini, Aktiv, H73

    IniWrite, %PotHK%, C:\ProgramData\settings.ini, Keys, PotHK3
    IniWrite, %Pot%, C:\ProgramData\settings.ini, Aktiv, Pot3
    
    IniWrite, %Profil1%, C:\ProgramData\settings.ini, Profil, Profil1
    IniWrite, %Profil2%, C:\ProgramData\settings.ini, Profil, Profil2
    IniWrite, %Profil3%, C:\ProgramData\settings.ini, Profil, Profil3
    IniWrite, %Profil4%, C:\ProgramData\settings.ini, Profil, Profil4

    IniWrite, %EnableDisableHK%, C:\ProgramData\settings.ini, Settings, EnableDisableHK
    IniWrite, %StartStopHK%, C:\ProgramData\settings.ini, Settings, StartStopHK
}
if (Profil4){
    IniWrite, %1HK%, C:\ProgramData\settings.ini, Keys, 1HK4
    IniWrite, %2HK%, C:\ProgramData\settings.ini, Keys, 2HK4
    IniWrite, %3HK%, C:\ProgramData\settings.ini, Keys, 3HK4
    IniWrite, %4HK%, C:\ProgramData\settings.ini, Keys, 4HK4
    IniWrite, %LmausHK%, C:\ProgramData\settings.ini, Keys, LmausHK4
    IniWrite, %RmausHK%, C:\ProgramData\settings.ini, Keys, RmausHK4
    IniWrite, %MoveHK%, C:\ProgramData\settings.ini, Keys, MoveHK4

    IniWrite, %SchmiedHK%, C:\ProgramData\settings.ini, Town, SchmiedHK4
    IniWrite, %UrshiHK%, C:\ProgramData\settings.ini, Town, UrshiHK4
    IniWrite, %KadalaHK%, C:\ProgramData\settings.ini, Town, KadalaHK4

    IniWrite, %Schak%, C:\ProgramData\settings.ini, Town, Schak4
    IniWrite, %Ursak%, C:\ProgramData\settings.ini, Town, Ursak4
    IniWrite, %Kadak%, C:\ProgramData\settings.ini, Town, Kadak4
    IniWrite, %Alle%, C:\ProgramData\settings.ini, Town, Alle4
    IniWrite, %Gamble%, C:\ProgramData\settings.ini, Town, Gamble4

    IniWrite, %Time1%, C:\ProgramData\settings.ini, Time, Time14
    IniWrite, %Time2%, C:\ProgramData\settings.ini, Time, Time24
    IniWrite, %Time3%, C:\ProgramData\settings.ini, Time, Time34
    IniWrite, %Time4%, C:\ProgramData\settings.ini, Time, Time44
    IniWrite, %Time5%, C:\ProgramData\settings.ini, Time, Time54
    IniWrite, %Time6%, C:\ProgramData\settings.ini, Time, Time64
    IniWrite, %Time7%, C:\ProgramData\settings.ini, Time, Time74

    IniWrite, %H1%, C:\ProgramData\settings.ini, Aktiv, H14
    IniWrite, %H2%, C:\ProgramData\settings.ini, Aktiv, H24
    IniWrite, %H3%, C:\ProgramData\settings.ini, Aktiv, H34
    IniWrite, %H4%, C:\ProgramData\settings.ini, Aktiv, H44
    IniWrite, %H5%, C:\ProgramData\settings.ini, Aktiv, H54
    IniWrite, %H6%, C:\ProgramData\settings.ini, Aktiv, H64
    IniWrite, %H7%, C:\ProgramData\settings.ini, Aktiv, H74

    IniWrite, %PotHK%, C:\ProgramData\settings.ini, Keys, PotHK4
    IniWrite, %Pot%, C:\ProgramData\settings.ini, Aktiv, Pot4
    
    IniWrite, %Profil1%, C:\ProgramData\settings.ini, Profil, Profil1
    IniWrite, %Profil2%, C:\ProgramData\settings.ini, Profil, Profil2
    IniWrite, %Profil3%, C:\ProgramData\settings.ini, Profil, Profil3
    IniWrite, %Profil4%, C:\ProgramData\settings.ini, Profil, Profil4

    IniWrite, %EnableDisableHK%, C:\ProgramData\settings.ini, Settings, EnableDisableHK
    IniWrite, %StartStopHK%, C:\ProgramData\settings.ini, Settings, StartStopHK
}


    HotKey, %StartStopHK%, StartStop
    HotKey, %EnableDisableHK%, EnableDisable        
}

GuiClose:
WinGetPos, Xpos, Ypos,,, D3 Noct Helper
    IniWrite, x %Xpos% y %Ypos%, C:\ProgramData\settings.ini, window position, gui_position
    IniWrite, %Profil1%, C:\ProgramData\settings.ini, Profil, Profil1
    IniWrite, %Profil2%, C:\ProgramData\settings.ini, Profil, Profil2
    IniWrite, %Profil3%, C:\ProgramData\settings.ini, Profil, Profil3
    IniWrite, %Profil4%, C:\ProgramData\settings.ini, Profil, Profil4
   
   ExitApp

info:
{
    MsgBox, Taste im spiel `nTastenbelegung `nZeit in ms `nProfiel auswahl führ meherere optionen für später geplant `nKadala/Schmied/Urshi normaler clicker
    return
}

button1:
{
    GuiControlGet, Profil1
    GuiControlGet, Profil2
    GuiControlGet, Profil3
    GuiControlGet, Profil4

    IniWrite, %Profil1%, C:\ProgramData\settings.ini, Profil, Profil1
    IniWrite, %Profil2%, C:\ProgramData\settings.ini, Profil, Profil2
    IniWrite, %Profil3%, C:\ProgramData\settings.ini, Profil, Profil3
    IniWrite, %Profil4%, C:\ProgramData\settings.ini, Profil, Profil4
    sleep 100
    Reload
}

StartStop:
{
    GuiControlGet, Time1
    GuiControlGet, Time2
    GuiControlGet, Time3
    GuiControlGet, Time4
    GuiControlGet, Time5
    GuiControlGet, Time6
    GuiControlGet, Time7

    GuiControlGet, H1
    GuiControlGet, H2
    GuiControlGet, H3
    GuiControlGet, H4
    GuiControlGet, H5
    GuiControlGet, H6
    GuiControlGet, H7

    GuiControlGet, 1HK
    GuiControlGet, 2HK
    GuiControlGet, 3HK
    GuiControlGet, 4HK
    GuiControlGet, LmausHK
    GuiControlGet, RmausHK
    GuiControlGet, MoveHK

    GuiControlGet,PotHk
    GuiControlGet,Pot

    Toggler := !Toggler
if Toggler
    
    gosub, Action1
  
    gosub, Action2

    gosub, Action3

    gosub, Action4

    gosub, Action5

    gosub, Action6

    gosub, Action7

SetTimer, Action1, % Toggler ? Time1 : "off"
SetTimer, Action2, % Toggler ? Time2 : "off"
SetTimer, Action3, % Toggler ? Time3 : "off"
SetTimer, Action4, % Toggler ? Time4 : "off"
SetTimer, Action5, % Toggler ? Time5 : "off"
SetTimer, Action6, % Toggler ? Time6 : "off"
SetTimer, Action7, % Toggler ? Time7 : "off"
return

Action1:
{
    if (H1){
        send {%1HK%}
    }
    return
}

Action2:
{
    if (H2){
    send {%2HK%}
    }
    return
}

Action3:
{
    if (H3){
    send {%3HK%}
    }
    return
}

Action4:
{
    if (H4){
    send {%4HK%}
    }
    return
}

Action5:
{
    if (H5){
    send {Shift Down}
    send {%LmausHK%}
    send {Shift Up}
    }
    return
}

Action6:
{
    if (H6){
    send {%RmausHK%}
    }
    return
}

Action7:
{
    if (H7){
    send {%MoveHK%}
    }
    return
}
    return
}

EnableDisable:
{
    GuiControlGet, HotKeysActive
    If(HotKeysActive)
    {
        HotKey, %StartStopHK%, Off
        HotKey, %KadalaHK%, Off
        HotKey, %UrshiHK%, Off
        HotKey, %SchmiedHK%, Off
        GuiControl,, HotKeysActive, 0
    }
    Else
    {
        HotKey, %StartStopHK%, On
        HotKey, %KadalaHK%, On
        HotKey, %UrshiHK%, On
        HotKey, %SchmiedHK%, On
        GuiControl,, HotKeysActive, 1
        autopot()
    }
    Return
}

autopot(){
        if (Pot){
            Toggler := !Toggler
if Toggler
	gosub, Actionpot
SetTimer, Actionpot, % Toggler ? 100 : "off"
return

Actionpot:
PixelSearch, , , 51, 124, 51, 124, 0x000000, 30, Fast
if (ErrorLevel = 0)
{
      PixelSearch,,, 1060, 1005, 1060, 1005, 0x271601, 30, Fast
    if ErrorLevel = 0
{
  Send, {%PotHK%}
}
}
return
}
}

Kadala:
{
    if (Kadak){
        Loop, 30
{
Send {RButton}
}
Send {ESC}
sleep 1000
return
}
}

;gemup
Urshi:
{
    if (Ursak = 1){
mousemove, 105, 640
sleep 30
click left
sleep 30
mousemove, 274, 547
sleep 30
click left
sleep 1560
send {t}
sleep 50
click left
sleep 1610
click left
sleep 1610
click left
sleep 1000
    }
return
}

;SALVAGE
Schmied:
{
    if (Schak = 1){

Critical
MouseGetPos x, y
MouseMove 512, 482
send {LButton}
MouseMove 165, 295
send {LButton}

;FIRST ROW

MouseMove 1477, 585	;1
send {Lbutton}
send {enter}
send {enter}

MouseMove 1527, 585	;2
send {Lbutton}
send {enter}
send {enter}

MouseMove 1577, 585	;3
send {Lbutton}
send {enter}
send {enter}

MouseMove 1627, 585	;4
send {Lbutton}
send {enter}
send {enter}

MouseMove 1677, 585	;5
send {Lbutton}
send {enter}
send {enter}

MouseMove 1727, 585	;6
send {Lbutton}
send {enter}
send {enter}

MouseMove 1777, 585	;7
send {Lbutton}
send {enter}
send {enter}

MouseMove 1827, 585	;8
send {Lbutton}
send {enter}
send {enter}

MouseMove 1877, 585	;9
send {Lbutton}
send {enter}
send {enter}

;SECOND ROW

MouseMove 1477, 635	;1
send {Lbutton}
send {enter}
send {enter}

MouseMove 1527, 635	;2
send {Lbutton}
send {enter}
send {enter}

MouseMove 1577, 635	;3
send {Lbutton}
send {enter}
send {enter}

MouseMove 1627, 635	;4
send {Lbutton}
send {enter}
send {enter}

MouseMove 1677, 635	;5
send {Lbutton}
send {enter}
send {enter}

MouseMove 1727, 635	;6
send {Lbutton}
send {enter}
send {enter}

MouseMove 1777, 635	;7
send {Lbutton}
send {enter}
send {enter}

MouseMove 1827, 635	;8
send {Lbutton}
send {enter}
send {enter}

MouseMove 1877, 635	;9
send {Lbutton}
send {enter}
send {enter}

;THIRD ROW

MouseMove 1477, 685	;1
send {Lbutton}
send {enter}
send {enter}

MouseMove 1527, 685	;2
send {Lbutton}
send {enter}
send {enter}

MouseMove 1577, 685	;3
send {Lbutton}
send {enter}
send {enter}

MouseMove 1627, 685	;4
send {Lbutton}
send {enter}
send {enter}

MouseMove 1677, 685	;5
send {Lbutton}
send {enter}
send {enter}

MouseMove 1727, 685	;6
send {Lbutton}
send {enter}
send {enter}

MouseMove 1777, 685	;7
send {Lbutton}
send {enter}
send {enter}

MouseMove 1827, 685	;8
send {Lbutton}
send {enter}
send {enter}

MouseMove 1877, 685	;9
send {Lbutton}
send {enter}
send {enter}

;FOURTH ROW

MouseMove 1477, 735	;1
send {Lbutton}
send {enter}
send {enter}

MouseMove 1527, 735	;2
send {Lbutton}
send {enter}
send {enter}

MouseMove 1577, 735	;3
send {Lbutton}
send {enter}
send {enter}

MouseMove 1627, 735	;4
send {Lbutton}
send {enter}
send {enter}

MouseMove 1677, 735	;5
send {Lbutton}
send {enter}
send {enter}

MouseMove 1727, 735	;6
send {Lbutton}
send {enter}
send {enter}

MouseMove 1777, 735	;7
send {Lbutton}
send {enter}
send {enter}

MouseMove 1827, 735	;8
send {Lbutton}
send {enter}
send {enter}

MouseMove 1877, 735	;9
send {Lbutton}
send {enter}
send {enter}

;FIFTH ROW

MouseMove 1477, 785	;1
send {Lbutton}
send {enter}
send {enter}

MouseMove 1527, 785	;2
send {Lbutton}
send {enter}
send {enter}

MouseMove 1577, 785	;3
send {Lbutton}
send {enter}
send {enter}

MouseMove 1627, 785	;4
send {Lbutton}
send {enter}
send {enter}

MouseMove 1677, 785	;5
send {Lbutton}
send {enter}
send {enter}

MouseMove 1727, 785	;6
send {Lbutton}
send {enter}
send {enter}

MouseMove 1777, 785	;7
send {Lbutton}
send {enter}
send {enter}

MouseMove 1827, 785	;8
send {Lbutton}
send {enter}
send {enter}

MouseMove 1877, 785	;9
send {Lbutton}
send {enter}
send {enter}

;SIXTH ROW

MouseMove 1477, 835	;1
send {Lbutton}
send {enter}
send {enter}

MouseMove 1527, 835	;2
send {Lbutton}
send {enter}
send {enter}

MouseMove 1577, 835	;3
send {Lbutton}
send {enter}
send {enter}

MouseMove 1627, 835	;4
send {Lbutton}
send {enter}
send {enter}

MouseMove 1677, 835	;5
send {Lbutton}
send {enter}
send {enter}

MouseMove 1727, 835	;6
send {Lbutton}
send {enter}
send {enter}

MouseMove 1777, 835	;7
send {Lbutton}
send {enter}
send {enter}

MouseMove 1827, 835	;8
send {Lbutton}
send {enter}
send {enter}

MouseMove 1877, 835	;9
send {Lbutton}
send {enter}
send {enter}

;erste spalte
if (alle){
MouseMove 1425, 585	;1
send {Lbutton}
send {enter}
send {enter}

MouseMove 1425, 635	;2
send {Lbutton}
send {enter}
send {enter}

MouseMove 1425, 685	;3
send {Lbutton}
send {enter}
send {enter}

MouseMove 1425, 735	;4
send {Lbutton}
send {enter}
send {enter}

MouseMove 1425, 785	;5
send {Lbutton}
send {enter}
send {enter}

MouseMove 1425, 835	;6
send {Lbutton}
send {enter}
send {enter}
}

click left 504 620
click left 242 590

MouseMove %x%, %y%
send {esc}
sleep 1000
}
return
}

; ---------------- UPDATE NOTIFY -------------------

CheckNewVersion()
{
    UrlDownloadToFile, https://raw.githubusercontent.com/Akayaakuma/Noct-Helper/master/README.md, CheckVers.txt
    If (ErrorLevel)
        Return
    SearchString := "Current Version:"
    Line := False
    Loop, Read, CheckVers.txt
    {
	If InStr(A_LoopReadLine, SearchString)
		If !Line
		{
			Line := A_LoopReadLine
			Continue ;second concerned line
		}
		Else
		{
			Line .= "`r`n" . A_LoopReadLine
			Break
		}
    }
    IfExist CheckVers.txt
        FileDelete CheckVers.txt

    FoundPos := InStr(Line,":")
    NewVersion := SubStr(Line,FoundPos + 2)
    If(NewVersion <> Version)
        MsgBox, 4,New Version Available, A new version is available, download now?
    Else
        Return
    IfMsgBox No
        Return
    run % "https://github.com/Akayaakuma/Noct-Helper"    
    
}
