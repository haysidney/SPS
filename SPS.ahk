#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn ; Enable warnings to assist with detecting common errors.
#SingleInstance force
#EscapeChar \	; use '\' (instead of the default '`') for, e.g. '\n'
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Hotkeys

; [CTRL]+[>] to force a window always on top.
;^>::  Winset, Alwaysontop, , A

; [CTRL]+[SHIFT]+` to open this AutoHotKey script.
;^`::
;Run notepad++.exe "%A_AppData%\\..\\..\\Bin\\SPS.ahk"

; Hotstrings
:C:AHK::AutoHotKey
:C:AHK\t::AutoHotKey
:*:shruggie::¯\\_(ツ)_/¯

:*:wat\t::‽
:*:interrobang::‽
:*:...\t::…
:*:important\t::⁂
:*:thumbup::👍
:*:thumbdown::👎

:*:because\t::∵
:*:therefore\t::∴

:*:checkbox+::☑
:*:checkbox-::☐
::checkboxx::☒
:*:radiobutton+::◉
:*:radiobutton-::◎

:*:playicon::⏵
:*:pauseicon::⏸
:*:stopicon::⏹
:*:recordicon::⏺

:*:star\t::★
:*:blackstar::★
:*:whitestar::☆

:*:hand\t::☛
:*:blackhand::☛
:*:whitehand::☞

:*:checkmark\t::✓
:*:crossmark\t::✗
:*:space\t::␣
:*:carriagereturn::⏎
:*:backspace::⌫
;:*:+\t::＋

:*:smalluptri::▴
:*:smalldowntri::▾
:*:smalllefttri::◂
:*:smallrighttri::▸

:*:whitesmalluptri::▵
:*:whitesmalldowntri::▿
:*:whitesmalllefttri::◃
:*:whitesmallrighttri::▹

:*:blacksmalluptri::▴
:*:blacksmalldowntri::▾
:*:blacksmalllefttri::◂
:*:blacksmallrighttri::▸

:*:uptri::▲
:*:downtri::▼
:*:lefttri::◀
:*:righttri::▶

:*:whiteuptri::△
:*:whitedowntri::▽
:*:whitelefttri::◁
:*:whiterighttri::▷

:*:blackuptri::▲
:*:blackdowntri::▼
:*:blacklefttri::◀
:*:blackrighttri::▶

:*:rightpointer::►
:*:leftpointer::◄

:*:clockwisearrow::⟳
:*:counterclockwisearrow::⟲

; Arrows appear incorrectly in SIMSUN font.
:*:uparrow::↑
:*:downarrow::↓
:*:leftarrow::←
:*:rightarrow::→
:*:uarr::↑
:*:darr::↓
:*:larr::←
:*:rarr::→
:*:rightarrowhead::➤

:*:circleicondark::●
:*:circleiconlight::○
:*:circleicon::○
:*:squareicon::⏹
:*:envelopesymbol::✉
:*:envelope\t::✉
:*:heartsymbol::♥
:*:heart\t::♥
:*:quotel\t::“
:*:quoter\t::”
:*:infinitysymbol::∞
:*:infinity\t::∞
:*:sharpsymbol::♯
:*:sharp\t::♯
:*:#\t::♯
:*:sinesymbol::∿
:*:microsymbol::{bs 1}μ
:*:microsecond::{bs 1}μs
!^+u::Send μ
:*:trademarksymbol::™
:*:tm\t::™
:*:prescriptionsymbol::℞
:*:rx\t::℞
:*:copyrightsymbol::©
:*:cr\t::©
:*:c#\t::C♯
:*:bug\t::🐜
:*:ant\t::🐜
:*:ladybug\t::🐞
:*:ladybeetle\t::🐞
:*:centipede\t::🐛
:*:millipede\t::🐛

:*B0:%appdata::%

; Date and Time

:*:/dt\t::
FormatTime, CurrentDateTime,, M/d/yyyy h:mm tt  ; It will look like 8/22/2016 9:32 PM
SendInput %CurrentDateTime%
return

:*:/d\t::
FormatTime, CurrentDateTime,, M/d/yy  ; It will look like 8/22/2016 9:32 PM
SendInput %CurrentDateTime%
return

:*:-d\t::
FormatTime, CurrentDateTime,, M-d-yy  ; It will look like 8-22-16
SendInput %CurrentDateTime%
return

:*C:-dT\t::
FormatTime, CurrentDateTime,, M-d-yy H-mm  ; It will look like 8-22-16 21-32
SendInput %CurrentDateTime%
return

:*C:-dt\t::
FormatTime, CurrentDateTime,, M-d-yy h-mm  ; It will look like 8-22-16 9-33
SendInput %CurrentDateTime%
return

:*C:-dtt\t::
FormatTime, CurrentDateTime,, M-d-yy h-mm-tt ; It will look like 8-22-16 9-33
SendInput %CurrentDateTime%
return

; Code

; HTML

:*:htmlbegin::
clipboardbackup=%clipboard%
; The clipboard requires \r\n in order to consider the character a newline.
sleep 100
clipboard=<!DOCTYPE html>\r\n<html lang="en">\r\n<head>\r\n<meta charset="utf-8">\r\n<title></title>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>
sleep 300
Send ^v{left 16}
sleep 100
clipboard=%clipboardbackup%
clipboardbackup=
return

:*:htmldoctype::<{!}DOCTYPE html>

;:*B0:<!doctype:: html>
;:*B0:<html:: lang="en"></html>{left 7}
;:*B0:<head::></head>{left 7}
;:*B0:<meta:: charset="utf-8">
;:*B0:<title::></title>{left 8}
;:*B0:<style::></style>{left 8}
;:*B0:<link:: rel="stylesheet" href="">{left 2}
;:*B0:<body::>\n\n</body>{left 8}
;:*B0:<p::></p>{left 4}
;:*B0:<table::></table>{left 8}
;:*B0:<td::></td>{left 5}
;:*B0:<tr::></tr>{left 5}
;:*B0:<span::></span>{left 7}
;:*B0:<div::></div>{left 6}
;:*B0:<button::></button>{left 9}
;:*B0:<select::>\n<option value=""></option>\n</select>{up}{end}{left 9}
;:*B0:<option:: value=""></option>{left 9}
;:*B0:<ul::></ul>{left 5}
;:*B0:<li::></li>{left 5}
;:*B0:<h1::></h1>{left 5}
;:*B0:<h2::></h2>{left 5}
;:*B0:<h3::></h3>{left 5}
;:*B0:<h4::></h4>{left 5}
;:*B0:<h5::></h5>{left 5}
;:*B0:<h6::></h6>{left 5}
;:*B0:<a:: href=""></a>{left 4}
;:*B0:<img:: src="" alt="">{left 9}
;:*B0:<input:: type="" value="">{left 11}
;:*B0:<label::></label>{left 8}
;:*B0:<textarea::></textarea>{left 11}

; C♯

:*C:DLLL::Debug.Log();{left 2}
:*C:DLL"::Debug.Log("");{left 3}
:*C:CWWW::Console.WriteLine();{left 2}
:*C:CWW"::Console.WriteLine("");{left 3}
:*C:CRRR::Console.ReadLine();{left 2}

:*:enum\t::enum EnumName\n{{}\n\n{}}{up 3}{end}{shift down}{ctrl down}{left}{ctrl up}{shift up}

:*C:sss\t::
Send string
SplashImage,,B w%A_ScreenWidth% h%A_ScreenHeight% cwBlack
Sleep,50
SplashImage,off
return


; Numbers

::1circleicon::①
::2circleicon::②
::3circleicon::③
::4circleicon::④
::5circleicon::⑤
::6circleicon::⑥
::7circleicon::⑦
::8circleicon::⑧
::9circleicon::⑨
::10circleicon::⑩
::11circleicon::⑪
::12circleicon::⑫
::13circleicon::⑬
::14circleicon::⑭
::15circleicon::⑮
::16circleicon::⑯
::17circleicon::⑰
::18circleicon::⑱
::19circleicon::⑲
::20circleicon::⑳

::0circle::⓪
::1circle::①
::2circle::②
::3circle::③
::4circle::④
::5circle::⑤
::6circle::⑥
::7circle::⑦
::8circle::⑧
::9circle::⑨
::10circle::⑩
::11circle::⑪
::12circle::⑫
::13circle::⑬
::14circle::⑭
::15circle::⑮
::16circle::⑯
::17circle::⑰
::18circle::⑱
::19circle::⑲
::20circle::⑳

:*:(1\t::⑴
:*:(2\t::⑵
:*:(3\t::⑶
:*:(4\t::⑷
:*:(5\t::⑸
:*:(6\t::⑹
:*:(7\t::⑺
:*:(8\t::⑻
:*:(9\t::⑼
:*:(10\t::⑽
:*:(11\t::⑾
:*:(12\t::⑿
:*:(13\t::⒀
:*:(14\t::⒁
:*:(15\t::⒂
:*:(16\t::⒃
:*:(17\t::⒄
:*:(18\t::⒅
:*:(19\t::⒆
:*:(20\t::⒇

:*:1.\t::⒈
:*:2.\t::⒉
:*:3.\t::⒊
:*:4.\t::⒋
:*:5.\t::⒌
:*:6.\t::⒍
:*:7.\t::⒎
:*:8.\t::⒏
:*:9.\t::⒐
:*:10.\t::⒑
:*:11.\t::⒒
:*:12.\t::⒓
:*:13.\t::⒔
:*:14.\t::⒕
:*:15.\t::⒖
:*:16.\t::⒗
:*:17.\t::⒘
:*:18.\t::⒙
:*:19.\t::⒚
:*:20.\t::⒛

:*:1\\2\t::½
:*:1\\3\t::⅓
:*:2\\3\t::⅔
:*:1\\4\t::¼
:*:3\\4\t::¾
:*:1\\5\t::⅕
:*:2\\5\t::⅕
:*:3\\5\t::⅕
:*:4\\5\t::⅕
:*:1\\6\t::⅙
:*:5\\6\t::⅚
:*:1\\8\t::⅛
:*:3\\8\t::⅜
:*:5\\8\t::⅝
:*:7\\8\t::⅞
:*:7\\8\t::⅞
:*:1\\\t::⅟

:*:1/3\t::⅓
:*:2/3\t::⅔
:*:1/2\t::½
:*:1/4\t::¼
:*:3/4\t::¾
:*:1/5\t::⅕
:*:2/5\t::⅕
:*:3/5\t::⅕
:*:4/5\t::⅕
:*:1/6\t::⅙
:*:5/6\t::⅚
:*:1/8\t::⅛
:*:3/8\t::⅜
:*:5/8\t::⅝
:*:7/8\t::⅞
:*:7/8\t::⅞
:*:1/\t::⅟

:c:Acircle::Ⓐ
:c:Bcircle::Ⓑ
:c:Ccircle::Ⓒ
:c:Dcircle::Ⓓ
:c:Ecircle::Ⓔ
:c:Fcircle::Ⓕ
:c:Gcircle::Ⓖ
:c:Hcircle::Ⓗ
:c:Icircle::Ⓘ
:c:Jcircle::Ⓙ
:c:Kcircle::Ⓚ
:c:Lcircle::Ⓛ
:c:Mcircle::Ⓜ
:c:Ncircle::Ⓝ
:c:Ocircle::Ⓞ
:c:Pcircle::Ⓟ
:c:Qcircle::Ⓠ
:c:Rcircle::Ⓡ
:c:Scircle::Ⓢ
:c:Tcircle::Ⓣ
:c:Ucircle::Ⓤ
:c:Vcircle::Ⓥ
:c:Wcircle::Ⓦ
:c:Xcircle::Ⓧ
:c:Ycircle::Ⓨ
:c:Zcircle::Ⓩ
:c:acircle::ⓐ
:c:bcircle::ⓑ
:c:ccircle::ⓒ
:c:dcircle::ⓓ
:c:ecircle::ⓔ
:c:fcircle::ⓕ
:c:gcircle::ⓖ
:c:hcircle::ⓗ
:c:icircle::ⓘ
:c:jcircle::ⓙ
:c:kcircle::ⓚ
:c:lcircle::ⓛ
:c:mcircle::ⓜ
:c:ncircle::ⓝ
:c:ocircle::ⓞ
:c:pcircle::ⓟ
:c:qcircle::ⓠ
:c:rcircle::ⓡ
:c:scircle::ⓢ
:c:tcircle::ⓣ
:c:ucircle::ⓤ
:c:vcircle::ⓥ
:c:wcircle::ⓦ
:c:xcircle::ⓧ
:c:ycircle::ⓨ
:c:zcircle::ⓩ

; Macros

; Typing AHKRELOAD and hitting [TAB] in any textbox will reload AutoHotKey.
; Typing AHKRELOAD in an Run window and hitting enter will also activate this.
:*:AHKRELOAD\t::
:*:AHKRELOAD\n::
IfWinActive, Run
{
Send, {Escape}
}
Reload
Sleep 1000 ; If successful, the reload will close this instance during the Sleep, so the line below will never be reached.
MsgBox, 4,, The script could not be reloaded. Would you like to open it for editing?
IfMsgBox, Yes, Edit
return

; Typing AHKBACKUP and hitting [TAB] in any textbox will copy this script to Google Drive.
; Typing AHKBACKUP in a Run window and hitting enter will also activate this.
:*:AHKBACKUP\t::
:*:AHKBACKUP\n::
IfWinActive, Run
{
Send, {Escape}
}
MsgBox, 4,, Would you like to Backup SBS.ahk to Google Drive?
IfMsgBox Yes
{
	FileCopy, %A_AppData%\\..\\..\\Bin\\SPS.ahk, %A_AppData%\\..\\..\\Google Drive\\Documents\\Bin\\SPS.ahk
}
return

; Typing AHKSTARTUP and hitting [TAB] will make a shortcut to this script in the Startup folder of the Start Menu.
; Typing AHKSTARTUP in an Run window and hitting enter will also activate this.
:*:AHKSTARTUP\t::
:*:AHKSTARTUP\n::
IfWinActive, Run
{
Send, {Escape}
}
MsgBox, 4,, Would you like to always run this script on startup?
IfMsgBox Yes
{
	FileCreateShortcut, %A_AppData%\\..\\..\\Bin\\SPS.ahk, %A_StartMenu%\\Programs\\Startup\\Sids Personal Shortcuts.lnk
}
return

; Keyboard Shortcut Strings

; [CTRL]+8 for Bullet
^8::Send •{Space}

; [CTRL]+[SHIFT]+8 AKA [CTRL]+* for White Bullet
^*::Send ◦{Space}

; [CTRL]+[ALT]+[SHIFT]+8 AKA [CTRL]+* for Square Bullet
^!*::Send ▪{Space}

;;;; [CTRL]+[SHIFT]+- for MDash
;;;^-::Send —{Space}

; [WIN]+T for Cygwin
#t:: Run C:\\cygwin64\\bin\\mintty.exe -i /Cygwin-Terminal.ico -

; [WIN]+N for Notepad++
#n:: Run "notepad++" -multiInst -nosession

; [Win]+{Tab] in Sublime Text to set Tab Width to 4
;$#::
;if WinActive("ahk_exe sublime_text.exe")
;{

; [CTRL]+U in Sublime Text to Open that file in Eclipse
; The file must exist in a project that's opened in Eclipse
$^U::
if WinActive("ahk_exe sublime_text.exe")
{
	KeyWait, Ctrl, U T3
	WinGetActiveTitle, Title
	if WinExist("ahk_exe eclipse.exe")
	{
		DetectHiddenWindows, On
		SendInput, {Ctrl downtemp}s{Ctrl up}
		SendInput, {Ctrl downtemp}{Shift downtemp}p{Shift up}{Ctrl up}
		Sleep 100
		SendInput, rename
		Sleep 100
		SendInput, {Enter}

		; Backup the clipboard, get the filename, and restore the clipboard
		Save := Clipboard, Clipboard := ""
		SendInput, {ctrl downtemp}c{ctrl up}
		ClipWait 1
		filename := Clipboard, Clipboard := Save

		SendInput, {Esc}
		WinActivate
		SendInput, {Ctrl downtemp}{Shift downtemp}r{Shift up}{Ctrl up}
		SendInput, %filename%
	}
}
else
{
	Send {Ctrl down}u{Ctrl up}
}
return

; [WIN]+S Grab TOTP from the last used LastPass login
#Include WaitPixelColor.ahk
#s::
if WinActive("ahk_exe chrome.exe")
{
	WinGetActiveTitle, windowTitle
	Send {Alt down}i{Alt up}
	WinWaitNotActive, %windowTitle%,,3
	if ErrorLevel
	{
		MsgBox, WinWait Timed Out
	}
	else
	{
		; Find the background color for "Search LastPass Vault" field.
		; We do this so that we know that we are ready to start sending inputs.
		desiredColors := []
		; Light Mode
		desiredColors.Push(0xf7f9fa)
		; Chrome Dark Mode Forced
		desiredColors.Push(0x1f2021)
		if (WaitPixelColors(desiredColors, 7, 5, 3000, "RGB") == 0)
		{
			Sleep, 100
			Send {Down}{Down}{Enter}
			Sleep, 100
			Send {Right}{Right}{Down}{Down}{Down}{Enter}
		}
		else
		{
			PixelGetColor, colorFound, 7, 5, "RGB"
			MsgBox, WaitPixelColor Color: %colorFound%
		}
	}
}
return

; [Alt]+[Space] Minimize Window
!Space::WinMinimize, A

; [CTRL]+[Alt]+[Space] Toggle Maximize Window
*!Space::
WinGet MX, MinMax, A
	If MX
		WinRestore A
	Else WinMaximize A

; Prevent Escape from closing ManicTime Notes window
#IfWinActive, ahk_exe ManicTimeClient.exe
Esc::return

; Windows Hotkeys

; All Relevent Windows Versions:
; [F4] or [ALT]+D to Focus Address Bar in File Explorer/Windows Explorer
; [WIN]+E for File Explorer/Windows Explorer
; [WIN]+L for Lock Machine
; [WIN]+X for Power User Features
; [ALT]+[ENTER] for Properties of Item in File Explorer/Windows Explorer

; Windows 10:
; [CTRL]+[SHIFT]+N for New Folder in File Explorer
; [WIN]+I for Windows 10 Settings
; [WIN]+[CTRL]+D Creates a New Virtual Desktop
; [WIN]+[CTRL]+[F4] Closes Current Virtual Desktop
; [WIN]+[CTRL]+[Left Arrow]/[Right Arrow] Switch Virtual Desktop

; Openning Windows Explorer automatically focuses the address bar.
$#e::
Send {LWin Down}e{LWin Up}
WinWaitActive, File Explorer
{
Send {Alt Down}d{Alt Up}
}
return

; Documentation of Other Application Hotkeys

; Chrome

; [F6] to Focus Omnibar