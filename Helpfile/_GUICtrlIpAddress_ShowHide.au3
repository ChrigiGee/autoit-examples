#include <GUIConstantsEx.au3>
#include <GuiIPAddress.au3>

Example()

Func Example()
	Local $hgui, $hIPAddress

	$hgui = GUICreate("IP Address Control Show/Hide Example", 300, 150)
	$hIPAddress = _GUICtrlIpAddress_Create($hgui, 10, 10)
	GUISetState(@SW_SHOW)

	_GUICtrlIpAddress_Set($hIPAddress, "24.168.2.128")

	Sleep(1000)
	_GUICtrlIpAddress_ShowHide($hIPAddress, @SW_HIDE)
	Sleep(1000)
	_GUICtrlIpAddress_ShowHide($hIPAddress, @SW_SHOW)

	; Wait for user to close GUI
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
EndFunc   ;==>Example
