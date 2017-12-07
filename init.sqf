/*
    File: init.sqf
    Author: 
    
    Description:
    
*/
StartProgress = false;

if (hasInterface) then {
    [] execVM "briefing.sqf"; //Load Briefing
};
[] execVM "KRON_Strings.sqf";
[] execVM "core\functions\fn_autoMessages.sqf";
[] execVM "statusBar.sqf";
[] execVM "remove.sqf";
[] execVM "zlt_fastrope.sqf";
if(hasInterface) then{[] execVM "qui\v_hud\fn_initHud.sqf"};

StartProgress = true;
