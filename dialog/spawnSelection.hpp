class life_spawn_selection {
    idd = 38500;
    movingEnable = 0;
    enableSimulation = 1;

    class controlsBackground {
        class life_RscTitleBackground: Life_RscText    {
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
            idc = -1;
            x = 0.1;
            y = 0.2;
            w = 0.8;
            h = (1 / 25);
        };

        class MainBackground: Life_RscText {
            colorBackground[] = {0,0,0,0.7};
            idc = -1;
            x = 0.195781 * safezoneW + safezoneX;
            y = 0.192 * safezoneH + safezoneY;
            w = 0.587812 * safezoneW;
            h = 0.627 * safezoneH;
        };

        class Title: Life_RscTitle {
            colorBackground[] = {0,0,0,0};
            idc = -1;
            text = "$STR_Spawn_Title";
            x = 0.1;
            y = 0.2;
            w = 0.8;
            h = (1 / 25);
        };

        class SpawnPointTitle: Title {
            idc = 38501;
            style = 1;
            text = "";
        };

        class MapView : Life_RscMapControl {
            idc = 38502;
            x = 0.195782 * safezoneW + safezoneX;
            y = 0.192 * safezoneH + safezoneY;
            w = 0.587812 * safezoneW;
            h = 0.572 * safezoneH;
            maxSatelliteAlpha = 0.75;//0.75;
            alphaFadeStartScale = 1.15;//0.15;
            alphaFadeEndScale = 1.29;//0.29;
        };
    };

    class controls {
        class SpawnPointList: Life_RscListNBox {
            idc = 38510;
            text = "";
            sizeEx = 0.041;
            coloumns[] = {0,0,0,1};
            drawSideArrows = 0;
            idcLeft = -1;
            idcRight = -1;
            rowHeight = 0.056;
            x = 0.195781 * safezoneW + safezoneX;
            y = 0.236 * safezoneH + safezoneY;
            w = 0.208281 * safezoneW;
            h = 0.506 * safezoneH;
            colorText[] = {1,1,1,1};
            colorBackground[] = {0,0,0,0.6};
            colorActive[] = {-0,0,0,0.6};
            onLBSelChanged = "_this call life_fnc_spawnPointSelected;";
        };

        class spawnButton: Life_RscButtonMenu {
            idc = -1;
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
            text = "$STR_Spawn_Spawn";
            onButtonClick = "[] call life_fnc_spawnConfirm";
            x = 0.670156 * safezoneW + safezoneX;
            y = 0.775 * safezoneH + safezoneY;
            w = 0.0567187 * safezoneW;
            h = 0.022 * safezoneH;
            colorText[] = {1,1,1,1};
            colorActive[] = {0,0,0,0.5};
        };
		
		class CancelButton: Life_RscButtonMenu {
            text = "$STR_Spawn_Exit"; //--- ToDo: Localize;
            onButtonClick = [ "Abort", true, false ] call BIS_fnc_endMission;
            x = 0.309219 * safezoneW + safezoneX;
            y = 0.775 * safezoneH + safezoneY;
            w = 0.0979687 * safezoneW;
            h = 0.022 * safezoneH;
            colorText[] = {1,1,1,1};
            colorBackground[] = {0,0,0,1};
            colorActive[] = {0,0,0,1};
        };
    };
};