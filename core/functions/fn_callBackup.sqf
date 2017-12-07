/*  
    Script file made by: VaporyDrop911  
*/

if (!life_callBackup) exitWith {hint "Non puoi farlo adesso!"};
 
_backupTime = 60; 
[player,_backupTime] remoteExec ["life_fnc_backup",west];  
life_callBackup = false;  
sleep _backupTime + 320;  
life_callBackup = true;  
hint format ["%1, You can call Backup again!",name player];