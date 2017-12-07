 /*
    File: fn_speedBomb.sqf
    Author: Vapomerda
    	
    Description:
    Attaches a speed bomb to a vehicle.
*/
private["_unit"];
_unit = cursorTarget;
    
if(!license_civ_rebel && !license_civ_bandito) exitWith {hint "Hai bisogno della licenza ribelle per usarla."}; // OPTIONAL - If you want license to plant the bomb.
if((!(_unit isKindOf "LandVehicle"))&&(!(_unit getVariable ["restrained",false]))) exitWith {hint "Non puoi mettere la bomba su questo."};
if(player distance _unit > 7) exitWith {hint "Devi essere vicino almeno 7 piedi!"};
if(!([false,"speedbomb",1] call life_fnc_handleInv)) exitWith {};
closeDialog 0;

life_action_inUse = true;

player playMove "AinvPknlMstpSnonWnonDnon_medic_1";
sleep 1.5;
waitUntil {animationState player != "ainvpknlmstpsnonwnondnon_medic_1"};

life_action_inUse = false;
if(player distance _unit > 7) exitWith {titleText["Non sei abbastanza vicino!","PLAIN"];};

titleText["Hai attaccato una bomba su questo veicolo.","PLAIN"];

[_unit] spawn
{
    _veh = _this select 0;
    waitUntil {(speed _veh) > 70}; // 70 - Speed for activate the bomb. You can change if you want ;)
    [[_veh, "caralarm",10],"life_fnc_playSound",true,false] spawn BIS_fnc_MP;
    hint "La bomba si è attivata!";
    { [[2,"Una bomba si è attivata se vai a meno di 50km/h esplodi!"],"life_fnc_broadcast",_x,false] spawn BIS_fnc_MP; } foreach (crew _veh);
    waitUntil {(speed _veh) < 50}; // 50 - Speed that the bomb will explode. You change it what you want. Don't forget to change the text above too.
    serv_killed = [player,"1090"];
    publicVariableServer "serv_killed";
    _test = "Bo_Mk82" createVehicle [0,0,9999];
    _test setPos (getPos _veh);
    _test setVelocity [100,0,0];
    hint "Una bomba piazzata è esplosa!";
};