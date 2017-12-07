#include "..\..\script_macros.hpp"
/*
    File: fn_playerSkins.sqf
    Author: Daniel Stuart

    Description:
    Sets skins for players by their side and uniform.
*/
private ["_skinName"];

switch (playerSide) do {
    case civilian: {
        if (LIFE_SETTINGS(getNumber,"civ_skins") isEqualTo 1) then {
            if (uniform player isEqualTo "U_C_Poloshirt_blue") then {
                player setObjectTextureGlobal [0, "textures\civilian_uniform_1.jpg"];
            };
            if (uniform player isEqualTo "U_C_Poloshirt_burgundy") then {
                player setObjectTextureGlobal [0, "textures\civilian_uniform_2.jpg"];
            };
            if (uniform player isEqualTo "U_C_Poloshirt_stripped") then {
                player setObjectTextureGlobal [0, "textures\civilian_uniform_3.jpg"];
            };
            if (uniform player isEqualTo "U_C_Poloshirt_tricolour") then {
                player setObjectTextureGlobal [0, "textures\civilian_uniform_4.jpg"];
            };
            if (uniform player isEqualTo "U_C_Poloshirt_salmon") then {
                player setObjectTextureGlobal [0, "textures\civilian_uniform_5.jpg"];
            };
            if (uniform player isEqualTo "U_C_Poloshirt_redwhite") then {
                player setObjectTextureGlobal [0, "textures\civilian_uniform_6.jpg"];
            };
            if (uniform player isEqualTo "U_C_Commoner1_1") then {
                player setObjectTextureGlobal [0, "textures\civilian_uniform_7.jpg"];
            };
        };
    };

    case west: {
        if (uniform player isEqualTo "U_Rangemaster") then {
            player setObjectTextureGlobal [0, "textures\cop_uniform.jpg"];
        };
		
		if (uniform player isEqualTo "U_O_OfficerUniform_ocamo") then {
            player setObjectTextureGlobal [0, "textures\questore_polizia.jpg"];
        };
		
		if (uniform player isEqualTo "U_C_WorkerCoveralls") then {
            player setObjectTextureGlobal [0, "textures\cop_gis.jpg"];
        };
		
		if (uniform player isEqualTo "U_B_CombatUniform_mcam_vest") then {
            player setObjectTextureGlobal [0, "textures\gis_capo.jpg"];
        };
		
		if (backpack player == "B_Carryall_cbr") then
		{
			unitbackpack player setObjectTextureGlobal[0,"textures\cop_bac.jpg"];
		};
		
		if (backpack player == "B_Kitbag_cbr") then
		{
			unitbackpack player setObjectTextureGlobal[0,"textures\gis_bac.jpg"];
		};
    };

    case independent: {
        if (uniform player isEqualTo "U_Rangemaster") then {
            player setObjectTextureGlobal [0, "textures\medic_uniform.jpg"];
        };
		
		if (uniform player isEqualTo "U_C_WorkerCoveralls") then {
            player setObjectTextureGlobal [0, "textures\medic_uniform2.jpg"];
        };
		
		if (backpack player == "B_Kitbag_cbr") then
		{
			unitbackpack player setObjectTextureGlobal[0,"textures\medic_bac.jpg"];
		};
    };
};
