/* 
-----------------------------------
Author: Wir3d
Description: Intro Athira
-----------------------------------
*/
waitUntil { alive player };
player allowDamage false;
_camera = "camera" camCreate [0,0,0];
_camera CameraEffect ["internal","back"];
_camera CamCommitPrepared 0;
//-----------------------------------
// Coordinate Athira
_camera camPrepareTarget [34140.72,99395.22,-55403.29];
_camera camPreparePos [14028.14,18663.38,50.45];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
//-----------------------------------
playSound "Intro";
titleText ["","Black IN",4];

any=[
[
["Lion Life","<t align = 'center' size = '0.7'>%1</t><br/>"],
["by lioncommunity","<t align = 'center' size = '1'>%1</t><br/>"],
["Ts: ts.lioncommunity.it","<t align = 'center' size = '0.7'>%1</t><br/>"]
]
] spawn BIS_fnc_typeText;

sleep 11;
titleText ["","black out",3];
waitUntil {camCommitted _camera};
sleep 5;
titleText ["","Black IN",4];
_camera cameraEffect ["terminate","back"];
camDestroy _camera;
player allowDamage true;
sleep 0;