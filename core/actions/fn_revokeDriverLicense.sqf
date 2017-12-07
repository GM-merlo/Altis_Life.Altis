/*
	File: fn_revokeDriverLicense.sqf
*/
private["_unit"];
params [
    ["_unit", ObjNull,[ObjNull]]
];
if(isNull _unit) exitWith {};
[0,format["%1 ritirato la patente a %2.",name player, name _unit]] remoteExecCall ["life_fnc_broadcast",west];
[4] remoteExecCall ["life_fnc_removeLicenses",_unit];