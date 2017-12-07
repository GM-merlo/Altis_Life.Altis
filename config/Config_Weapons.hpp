/*
*    FORMAT:
*        STRING (Conditions) - Must return boolean :
*            String can contain any amount of conditions, aslong as the entire
*            string returns a boolean. This allows you to check any levels, licenses etc,
*            in any combination. For example:
*                "call life_coplevel && license_civ_someLicense"
*            This will also let you call any other function.
*            
*
*    ARRAY FORMAT:
*        0: STRING (Classname): Item Classname
*        1: STRING (Nickname): Nickname that will appear purely in the shop dialog
*        2: SCALAR (Buy price)
*        3: SCALAR (Sell price): To disable selling, this should be -1
*        4: STRING (Conditions): Same as above conditions string
*
*    Weapon classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgWeapons_Weapons
*    Item classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgWeapons_Items
*
*/
class WeaponShops {
    //Armory Shops
    class gun {
        name = "Billy Joe's Firearms";
        side = "civ";
        conditions = "license_civ_gun";
        items[] = {
            { "hgun_Rook40_F", "", 30000, -1, "" },
            { "hgun_Pistol_01_F", "", 30000, -1, "" } //Apex DLC
        };
        mags[] = {
            { "16Rnd_9x21_Mag", "", 1000, -1, "" },
            { "10Rnd_9x21_Mag", "", 1000, -1, "" } //Apex DLC
        };
        accs[] = {
        };
    };

    class rebel {
        name = "Mohammed's Jihadi Shop";
        side = "civ";
        conditions = "license_civ_rebel";
        items[] = {
			{ "arifle_AKM_F", "", 250000, -1, "" },
			{ "arifle_AK12_F", "", 300000, -1, "" },
			{ "arifle_TRG21_F", "", 150000, -1, "" },
			{ "SMG_01_F", "", 70000, -1, "" },
			{ "arifle_AKS_F", "", 100000, -1, "" },
			{ "hgun_ACPC2_F", "", 30000, -1, "" },
			{ "Binocular", "", 200, -1, "" },
			{ "ItemRadio", "Smartphone", 200, -1, "" },
            { "ItemGPS", "", 500, -1, "" },
            { "ItemMap", "", 100, -1, "" },
            { "ItemCompass", "", 100, -1, "" },
            { "ItemWatch", "", 100, -1, "" },
            { "FirstAidKit", "", 1000, -1, "" },
            { "NVGoggles", "", 2000, -1, "" }
        };
        mags[] = {
			{ "30Rnd_762x39_Mag_F", "", 1000, -1, "" }, 			
            { "30Rnd_556x45_Stanag", "", 1000, -1, "" }, 
			{ "30Rnd_45ACP_Mag_SMG_01", "", 1000, -1, "" },
			{ "30Rnd_545x39_Mag_F", "", 1000, -1, "" },
			{ "9Rnd_45ACP_Mag", "", 1000, -1, "" }
        };
        accs[] = {
			{ "optic_ERCO_blk_F", "", 20000, -1, "" },
			{ "optic_Hamr", "", 20000, -1, "" },
			{ "optic_ACO_grn", "", 5000, -1, "" },
			{ "optic_Holosight", "", 10000, -1, "" },
			{ "acc_flashlight", "", 5000, -1, "" },
			{ "acc_pointer_IR", "", 5000, -1, "" }
        };
	}
	
	class tutto_w {
		name = "TuttoQuanto";
        side = "civ";
        conditions = "license_civ_tutto_lic";
        items[] = {
			{ "srifle_DMR_06_olive_F ", "", 350000, -1, "" },
            { "arifle_Mk20C_plain_F", "", 130000, 74000, "" },
			{ "arifle_TRG21_F", "", 130000, 74000, "" },
			{ "SMG_01_F", "", 70000, 35000, "" },
			{ "SMG_02_F", "", 100000, 50000, "" },
			{ "arifle_Katiba_C_F", "", 200000, 100000, "" },
			{ "arifle_AKS_F", "", 100000, 50000, "" },
			{ "arifle_Mk20C_plain_F", "", 130000, 74000, "" },
			{ "hgun_ACPC2_F", "", 30000, 15000, "" },
			{ "Binocular", "", 150, 75, "" },
			{ "ItemRadio", "Smartphone", 150, 75, "" },
            { "ItemGPS", "", 100, 50, "" },
            { "ItemMap", "", 50, 25, "" },
            { "ItemCompass", "", 50, 25, "" },
            { "ItemWatch", "", 50, 25, "" },
            { "FirstAidKit", "", 150, 75, "" },
            { "NVGoggles", "", 2000, 1000, "" },
            { "Chemlight_red", "", 300, 150, "" },
            { "Chemlight_yellow", "", 300, 150, "" },
            { "Chemlight_green", "", 300, 150, "" },
            { "Chemlight_blue", "", 300, 150, "" }
        };
        mags[] = {
			{ "20Rnd_762x51_Mag", "", 600, 150, "" }, 
            { "30Rnd_556x45_Stanag", "", 300, 150, "" }, 
			{ "30Rnd_45ACP_Mag_SMG_01", "", 300, 150, "" },
			{ "30Rnd_9x21_Mag_SMG_02", "", 300, 150, "" },
			{ "30Rnd_65x39_caseless_green", "", 300, 150, "" },
			{ "30Rnd_545x39_Mag_F", "", 300, 150, "" },
			{ "9Rnd_45ACP_Mag", "", 300, 150, "" }
        };
        accs[] = {
            { "muzzle_snds_H", "", 600000, 1750, "" },
			{ "muzzle_snds_L", "", 200000, 1750, "" },
			{ "muzzle_snds_M", "", 350000, 1750, "" },
			{ "muzzle_snds_B", "", 3500, 1750, "" },
			{ "muzzle_snds_H_MG", "", 600000, 1750, "" },
			{ "muzzle_snds_H_SW", "", 600000, 1750, "" },
			{ "muzzle_snds_acp", "", 150000, 1750, "" },
			{ "optic_Hamr", "", 75000, 1750, "" },
			{ "optic_ACO_grn", "", 15000, 1750, "" },
			{ "optic_Holosight", "", 20000, 1750, "" },
			{ "acc_flashlight", "", 5000, 1750, "" },
			{ "acc_pointer_IR", "", 5000, 1750, "" }
        };
	}
	
	class mafia {
        name = "Mafia Shop";
        side = "civ";
        conditions = "license_civ_mafia";
        items[] = {
			{ "arifle_Katiba_C_F", "", 250000, -1, "" },
			{ "arifle_CTAR_blk_F", "", 300000, -1, "" },
			{ "SMG_01_F", "", 70000, -1, "" },
			{ "arifle_AKS_F", "", 100000, -1, "" },
			{ "arifle_Mk20C_plain_F", "", 150000, -1, "" },
			{ "hgun_Pistol_heavy_01_F", "", 30000, -1, "" },
			{ "Binocular", "", 200, -1, "" },
			{ "ItemRadio", "Smartphone", 200, -1, "" },
            { "ItemGPS", "", 500, -1, "" },
            { "ItemMap", "", 100, -1, "" },
            { "ItemCompass", "", 100,-1, "" },
            { "ItemWatch", "", 100, -1, "" },
            { "FirstAidKit", "", 1000, -1, "" },
            { "NVGoggles", "", 2000, -1, "" }
        };
        mags[] = {
			{ "30Rnd_580x42_Mag_F", "", 1000, -1, "" }, 			
            { "30Rnd_556x45_Stanag", "", 1000, -1, "" }, 
			{ "30Rnd_45ACP_Mag_SMG_01", "", 1000, -1, "" },
			{ "30Rnd_65x39_caseless_green", "", 1000, -1, "" },
			{ "30Rnd_545x39_Mag_F", "", 1000, -1, "" },
			{ "11Rnd_45ACP_Mag", "", 1000, -1, "" }
        };
        accs[] = {
			{ "optic_Hamr", "", 20000, -1, "" },
			{ "optic_ACO_grn", "", 5000, -1, "" },
			{ "optic_Holosight", "", 10000, -1, "" },
			{ "acc_flashlight", "", 5000, -1, "" },
			{ "acc_pointer_IR", "", 5000, -1, "" }
        };
	}
	
    class gang {
        name = "Hideout Armament";
        side = "civ";
        conditions = "";
        items[] = {
            { "hgun_Pistol_heavy_02_F", "", 40000, -1, "" },
            { "hgun_ACPC2_F", "", 30000, -1, "" },
			{ "SMG_05_F", "", 100000, -1, "" },
            { "hgun_PDW2000_F", "", 70000, -1, "" }
        };
        mags[] = {
            { "6Rnd_45ACP_Cylinder", "", 4000, -1, "" },
            { "9Rnd_45ACP_Mag", "", 4000, -1, "" },
			{ "30Rnd_9x21_Mag_SMG_02", "", 4000, -1, "" },
            { "30Rnd_9x21_Mag", "", 4000, -1, "" }
        };
        accs[] = {
            { "optic_ACO_grn_smg", "", 15000, -1, "" }
        };
    };

    //Basic Shops
    class genstore {
        name = "Altis General Store";
        side = "civ";
        conditions = "";
        items[] = {
            { "Binocular", "", 200, -1, "" },
			{ "ItemRadio", "Smartphone", 200, -1, "" },
            { "ItemGPS", "", 500, -1, "" },
            { "ItemMap", "", 100, -1, "" },
            { "ItemCompass", "", 100, -1, "" },
            { "ItemWatch", "", 100, -1, "" },
            { "FirstAidKit", "", 1000, -1, "" },
            { "NVGoggles", "", 2000, -1, "" }
        };
        mags[] = {};
        accs[] = {};
    };

    class f_station_store {
        name = "Altis Fuel Station Store";
        side = "";
        conditions = "";
        items[] = {
            { "Binocular", "", 1000, -1, "" },
			{ "ItemRadio", "Smartphone", 200, -1, "" },
            { "ItemGPS", "", 500, -1, "" },
            { "ItemMap", "", 100, -1, "" },
            { "ItemCompass", "", 100, -1, "" },
            { "ItemWatch", "", 100, -1, "" },
            { "FirstAidKit", "", 2000, -1, "" },
            { "NVGoggles", "", 5000, -1, "" }
        };
        mags[] = {};
        accs[] = {};
    };

    //Cop Shops
    class cop_basic {
        name = "Altis Cop Shop";
        side = "cop";
        conditions = "";
        items[] = {
            { "HandGrenade_Stone", $STR_W_items_Flashbang, 5000, -1, "" },
            { "hgun_P07_snds_F", $STR_W_items_StunPistol, 500, -1, "" },
			{ "SMG_02_F", "" , 5000, -1, "" },
			{ "SMG_05_F", "" , 5000, -1, "" },
			{ "arifle_SPAR_01_blk_F", "" , 10000, -1, "call life_coplevel >= 3" },
			{ "arifle_MXC_Black_F", "" , 15000, -1, "call life_coplevel >= 2" },
			{ "arifle_MX_Black_F", "" , 20000, -1, "call life_coplevel >= 4" },
			{ "Binocular", "", 200, -1, "" },
			{ "ItemRadio", "Smartphone", 200, -1, "" },
            { "ItemGPS", "", 500, -1, "" },
            { "ItemMap", "", 100, -1, "" },
            { "ItemCompass", "", 100, -1, "" },
            { "ItemWatch", "", 100, -1, "" },
            { "FirstAidKit", "", 200, -1, "" },
            { "NVGoggles", "", 1000, -1, "" }
        };
        mags[] = {
            { "16Rnd_9x21_Mag", "", 100, -1, "" },
			{ "30Rnd_9x21_Mag_SMG_02", "", 100, -1, "" },
			{ "30Rnd_556x45_Stanag", "", 100, -1, "" },
			{ "30Rnd_65x39_caseless_mag", "", 100, -1, "" },
			{ "20Rnd_762x51_Mag", "", 100, -1, "" }
        };
        accs[] = {
			{ "muzzle_snds_L", "", 1000, -1, "" },
			{ "optic_Arco_blk_F", "", 1000, -1, "call life_coplevel >= 3" },
			{ "optic_Arco", "", 1000, -1, "call life_coplevel >= 3" },
			{ "optic_ACO_grn", "", 1000, -1, "" },
			{ "optic_Holosight", "", 1000, -1, "" },
			{ "acc_flashlight", "", 1000, -1, "" },
			{ "acc_pointer_IR", "", 1000, -1, "" }
        };
    };
	
	//Cop Shops
    class cop_gis {
        name = "Altis Cop GIS Shop";
        side = "cop";
        conditions = "license_cop_gis";
        items[] = {
            { "HandGrenade_Stone", $STR_W_items_Flashbang, 5000, -1, "" },
            { "hgun_P07_snds_F", $STR_W_items_StunPistol, 500, -1, "" },
			{ "SMG_02_F", "" , 5000, -1, "" },
			{ "SMG_05_F", "" , 5000, -1, "" },
			{ "arifle_SPAR_01_blk_F", "" , 10000, -1, "" },
			{ "arifle_MXC_Black_F", "" , 10000, -1, "" },
			{ "arifle_MX_Black_F", "" , 15000, -1, "" },
			{ "arifle_SPAR_03_blk_F", "" , 50000, -1, "" },
			{ "Binocular", "", 100, -1, "" },
			{ "ItemRadio", "Smartphone", 100, -1, "" },
            { "ItemGPS", "", 100, -1, "" },
            { "ItemMap", "", 100, -1, "" },
            { "ItemCompass", "", 100, -1, "" },
            { "ItemWatch", "", 100, -1, "" },
            { "FirstAidKit", "", 100, -1, "" },
            { "NVGoggles", "", 1000, -1, "" }
        };
        mags[] = {
            { "16Rnd_9x21_Mag", "", 100, -1, "" },
			{ "30Rnd_9x21_Mag_SMG_02", "", 100, -1, "" },
			{ "30Rnd_556x45_Stanag", "", 100, -1, "" },
			{ "30Rnd_65x39_caseless_mag", "", 100, -1, "" },
			{ "20Rnd_762x51_Mag", "", 100, -1, "" }
        };
        accs[] = {
            { "muzzle_snds_H", "", 10000, -1, "" },
			{ "muzzle_snds_L", "", 1000, -1, "" },
			{ "muzzle_snds_M", "", 10000, -1, "" },
			{ "muzzle_snds_B", "", 20000, -1, "" },
			{ "optic_Arco_blk_F", "", 1000, -1, "" },
			{ "optic_Arco", "", 1000, -1, "call life_coplevel >= 3" },
			{ "optic_ACO_grn", "", 1000, -1, "" },
			{ "optic_Holosight", "", 1000, -1, "" },
			{ "acc_flashlight", "", 1000, -1, "" },
			{ "acc_pointer_IR", "", 1000, -1, "" }
        };
    };

    //Medic Shops
    class med_basic {
        name = "store";
        side = "med";
        conditions = "";
        items[] = {
            { "ItemGPS", "", 100, -1, "" },
            { "Binocular", "", 100, -1, "" },
            { "FirstAidKit", "", 100, -1, "" },
            { "NVGoggles", "", 1000, -1, "" },
			{ "hgun_P07_snds_F", $STR_W_items_StunPistol, 5000, -1, "" }
        };
        mags[] = {
			{ "16Rnd_9x21_Mag", "", 1000, -1, "" }
		};
        accs[] = {};
    };
};
