/*  
	Cittadinanza   
	@Author : Vapory

*/

private["_target","_message"];  

_target = cursorTarget;  

if(playerSide != civilian) exitWith  
{  
    hint "Non sei un cittadino italiano!";  
};  

if( isNull _target) then {_target = player;};  

if( !(_target isKindOf "Man") ) then {_target = player;};  

if( !(alive _target) ) then {_target = player;};  

_message = format["<img size='10' color='#FFFFFF' image='icons\civ.paa'/><br/><br/><t size='2.5'>Nome Cognome:</t><br/><t size='1'>%1</t>", name player];  

[player, _message] remoteExec ["life_fnc_passeportCiv",_target];