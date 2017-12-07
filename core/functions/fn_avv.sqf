#include "..\..\script_macros.hpp"
/*	
	Author: Demigod
	Edit by VaporyDrop911 for 5.0.0		
	Description:	Purge Server Event setup. Sends a faction announcement, 
	plays a sound file from an object	and toggles a variable.
*/
private["_message"];
if(FETCH_CONST(life_adminlevel) < 2) exitWith {closeDialog 0; 
hint "You need to be an Admin to use this function.";};//
if(life_event) exitWith {closeDialog 0; hint "There is already a server event under-way.";};//
life_event = true;

[Tower_1, "end_p",5000] remoteExec ["life_fnc_playSound",0];
[Tower_2, "end_p",5000] remoteExec ["life_fnc_playSound",0];
[Tower_3, "end_p",5000] remoteExec ["life_fnc_playSound",0];
[Tower_4, "end_p",5000] remoteExec ["life_fnc_playSound",0];
[Tower_5, "end_p",5000] remoteExec ["life_fnc_playSound",0];
[Tower_6, "end_p",5000] remoteExec ["life_fnc_playSound",0];
[Tower_7, "end_p",5000] remoteExec ["life_fnc_playSound",0];
[Tower_8, "end_p",5000] remoteExec ["life_fnc_playSound",0];
[Tower_9, "end_p",5000] remoteExec ["life_fnc_playSound",0];
[Tower_10, "end_p",5000] remoteExec ["life_fnc_playSound",0];
[Tower_11, "end_p",5000] remoteExec ["life_fnc_playSound",0];
[Tower_12, "end_p",5000] remoteExec ["life_fnc_playSound",0];
[Tower_13, "end_p",5000] remoteExec ["life_fnc_playSound",0];
[Tower_14, "end_p",5000] remoteExec ["life_fnc_playSound",0];
[Tower_15, "end_p",5000] remoteExec ["life_fnc_playSound",0];
[Tower_16, "end_p",5000] remoteExec ["life_fnc_playSound",0];
[Tower_17, "end_p",5000] remoteExec ["life_fnc_playSound",0];
[Tower_18, "end_p",5000] remoteExec ["life_fnc_playSound",0];
[Tower_19, "end_p",5000] remoteExec ["life_fnc_playSound",0];
[Tower_20, "end_p",5000] remoteExec ["life_fnc_playSound",0];
[Tower_21, "end_p",5000] remoteExec ["life_fnc_playSound",0];
[Tower_22, "end_p",5000] remoteExec ["life_fnc_playSound",0];
[Tower_23, "end_p",5000] remoteExec ["life_fnc_playSound",0];
[Tower_24, "end_p",5000] remoteExec ["life_fnc_playSound",0];
[Tower_25, "end_p",5000] remoteExec ["life_fnc_playSound",0];
[Tower_26, "end_p",5000] remoteExec ["life_fnc_playSound",0];
sleep 70;
life_event = false;