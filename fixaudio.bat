@ECHO OFF
NET SESSION >nul 2>&1
IF %ERRORLEVEL% EQU 0 (
   ECHO ####### Stopping Services #######
	net stop Audiosrv
	net stop AudioEndpointBuilder
	net stop RtkAudioService
	net stop UmRdpService
	ECHO ####### Starting Services #######
	net start Audiosrv
	net start AudioEndpointBuilder
	net start RtkAudioService
	net start UmRdpService
	ECHO ####### Finished #######
	ECHO ####### Now, you should reconnect to remote desktop #######
) ELSE (
	ECHO ####### ERROR: ADMINISTRATOR PRIVILEGES REQUIRED #########
)
PAUSE