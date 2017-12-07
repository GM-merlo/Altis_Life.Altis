#include "..\..\script_macros.hpp"

/*
	File: fn_craftCfg.sqf
	Author: EdgeKiller
	Description:
	Master configuration file for the crafting menu.
*/
	
private["_craft","_return"];
_craft = [_this,0,"",[""]] call BIS_fnc_param;
if(_craft == "") exitWith {closeDialog 0}; //Bad shop type passed.
switch(_craft) do {
	case "weapon": {
		_return = [
			//[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
			["hgun_P07_F", ["copper_refined",10,"iron_refined",10,"plastic_piece",2]],
			["muzzle_snds_L", ["copper_refined",5,"iron_refined",5,"plastic_piece",1,"pezze_ar_culo",1]],
			["muzzle_snds_M", ["copper_refined",10,"iron_refined",5,"plastic_piece",1,"pezze_ar_culo",2]],
			["muzzle_snds_H", ["copper_refined",10,"iron_refined",10,"plastic_piece",4,"pezze_ar_culo",4]],
			["ItemGPS", ["copper_refined",10,"plastic_piece",1,"electronic_parts",2,"cpu_processor",2]],
			["NVGoggles", ["plastic_piece",1,"glass",10,"cpu_processor",2]],
			["Binocular", ["iron_refined",10,"glass",10]],
			["hgun_ACPC2_F", ["copper_refined",10,"iron_refined",10,"plastic_piece",2]],
			["16Rnd_9x21_Mag", ["copper_refined",1,"iron_refined",1,"petardo_nesploso",2]],
			["9Rnd_45ACP_Mag", ["copper_refined",1,"iron_refined",1,"petardo_nesploso",2]],
            ["H_RacingHelmet_1_green_F", ["copper_refined",4,"iron_refined",4,"plastic_piece",5]],
			["V_Press_F", ["plastic_piece",2,"iron_refined",10,"pezze_ar_culo",2]],
			["V_TacVest_khk", ["plastic_piece",4,"iron_refined",20,"pezze_ar_culo",4]],
			["speedbomb", ["copper_refined",2,"iron_refined",2,"plastic_piece",5,"petardo_nesploso",2,"cpu_processor",2]],			
			["H_ShemagOpen_tan", ["plastic_piece",1,"pezze_ar_culo",3]],
			["arifle_Mk20C_plain_F", ["plastic_piece",3,"pezze_ar_culo",1,"copper_refined",4,"iron_refined",4,"cpu_processor",2]],
			["30Rnd_556x45_Stanag_Tracer_Red", ["copper_refined",2,"iron_refined",2,"petardo_nesploso",4]]
		];
	
		if(FETCH_CONST(life_adminlevel) > 0) then {
			_return pushBack
			["HandGrenade_Stone", ["copper_refined",10,"iron_refined",10,"plastic_piece",5]];
		};
	};

	case "uniform": {
		_return = [
			//[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
			["U_IG_Guerilla1_1", ["plastic_piece",2,"pezze_ar_culo",2]],
			["U_NikosBody", ["plastic_piece",1,"pezze_ar_culo",3]]
		];
	};
	
	case "backpack": {
		_return = [
			//[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
			["B_Carryall_oli", ["pezze_ar_culo",1,"plastic_piece",1]],
			["B_Bergen_tna_f", ["pezze_ar_culo",5,"plastic_piece",5]]
		];
	};
	
	case "item": {
		_return = [
			//[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
			["iron_refined", ["copper_refined",2]],
			["diamond_cut", ["copper_refined",1,"iron_refined",1]],
			["lockpick", ["copper_refined",15,"iron_refined",15]],
			["speedbomb", ["copper_refined",2,"iron_refined",2,"plastic_piece",5,"petardo_nesploso",2,"cpu_processor",2]],
			["turtle_soup", ["turtle_raw",1,"plastic_piece",1]],
			["ToolKit", ["iron_refined",10,"copper_refined",10]]			
		];
	};
};
_return;