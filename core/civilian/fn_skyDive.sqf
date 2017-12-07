/*
	File: fn_skyDiving.sqf
	Author: Ciaran Langton
	Edited: Panda
	Desc: Makes the player skydive.
*/
if(life_cash < 500) exitWith {hint "Non hai 500€ per il salto!";};
life_cash = life_cash - 500;
if(life_action_inUse) exitWith {};
life_action_inUse = true;
life_skydive_backpack = backpack player;
life_skydive_backpackItems = backpackItems player;
life_skydive_uniform = uniform player;
life_skydive_hat = headgear player;
_pos = getPosATL player;
_pos set[2,5000];
cutText ["", "BLACK OUT", 5];
sleep 3;
cutText ["Sei a 300 metri dalla zona di drop. Preparati a saltare!", "BLACK FADED"];
0 cutFadeOut 999999; 
sleep 1;
player setVelocity [0,0,0];
player setPos (getMarkerPos "respawn_civilian"); //Send them to a island to play the audio to simulate the plane.
player addBackpack "B_Parachute";
player addUniform "U_C_Scientist";
player addHeadgear "H_Cap_headphones";
sleep 5;
player setPosATL _pos; //Set their position
_currentView = viewDistance;
setViewDistance 6000; //Up the view distance
cutText["","PLAIN"];  
waitUntil {isTouchingGround player};
hint "Hey quelli sono i miei vestiti, tieni quelli vecchi!";
removeBackpack player;
removeHeadgear player;
removeUniform player;
player addBackpack life_skydive_backpack;
player addUniform life_skydive_uniform;
player addHeadgear life_skydive_hat;
clearBackpackCargo player;
{
	[_x,true,true] call life_fnc_handleItem;
} foreach life_skydive_backpackItems;
setViewDistance _currentView;
life_action_inUse = false;