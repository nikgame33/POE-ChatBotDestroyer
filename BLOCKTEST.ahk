#SingleInstance forced
;SendMode Input

IfWinActive, Path of Exile
{        
	BlockInput On
		Send {Enter}
		sleep 1
		Send {. 10}{Enter}
		sleep 1
		Send {. 10}{Enter}
		sleep 1
		Send {. 10}{Enter}
		sleep 1
		Send {. 10}{Enter}


	BlockInput Off
	return
}
ExitApp