/* 
-----------------------------------
Author: Wir3d
Description: Intro Kavala
-----------------------------------
*/
waitUntil { alive player };
player allowDamage false;
_camera = "camera" camCreate [0,0,0];
_camera CameraEffect ["internal","back"];
_camera CamCommitPrepared 0;
//-----------------------------------
// Coordinate Kavala
_camera camPrepareTarget [5789.28,-83292.53,-25736.98];
_camera camPreparePos [3642.66,13284.80,48.97];
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