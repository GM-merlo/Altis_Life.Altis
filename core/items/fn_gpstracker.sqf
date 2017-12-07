/*
	File: fn_gpsTracker.sqf
	Author: VaporyDrop911
	Description: Attaches a gps tracker to selected vehicle
*/
private["_unit"];
_unit = cursorTarget;

if(isNull _unit) exitWith {};
if((!(_unit isKindOf "LandVehicle"))&&(!(_unit getVariable ["restrained",false]))) exitWith {hint "Non puoi mettere la bomba su questo."};
if(player distance _unit > 7) exitWith {hint "Devi essere vicino almeno 7 piedi"};
if(!([false,"gpstracker",1] call life_fnc_handleInv)) exitWith {};
closeDialog 0;

life_action_inUse = true;

player playMove "AinvPknlMstpSnonWnonDnon_medic_1";
sleep 1.5;
waitUntil {animationState player != "ainvpknlmstpsnonwnondnon_medic_1"};

life_action_inUse = false;
if(player distance _unit > 7) exitWith {titleText["Non sei vicino a veicoli!","PLAIN"];};

titleText["Hai appena attacato un tracciatore GPS a questo veicolo.","PLAIN"];

[_unit] spawn 
{
	_veh = _this select 0;
	_markerName = format["%1_gpstracker",_veh];
	_marker = createMarkerLocal [_markerName, visiblePosition _veh];
	_marker setMarkerColorLocal "ColorRed";
	_marker setMarkerTypeLocal "Mil_dot";
	_marker setMarkerTextLocal "GPS Tracker "+getText(configFile >> "CfgVehicles" >> typeof _veh >> "displayName");
	_marker setMarkerPosLocal getPos _veh;
	
	while {true} do 
	{
		if(not alive _veh) exitWith {deleteMarkerLocal _markerName;};
		_marker setMarkerPosLocal getPos _veh;
		sleep 0.5;
	};
};