/*
	Idea by Arma 3 Life improvements 
*/

waitUntil {!(isNull (findDisplay 46))};
disableSerialization;
_rscLayer = "tlgStatusbar" call BIS_fnc_rscLayer;
_rscLayer cutRsc["tlgStatusbar","PLAIN"];

[] spawn {
	while {true} do
	{	
		sleep 1;
		
		// set some basic variables
		_getHealth = getdammage player;
		_getStamina = getfatigue player;
		_getHunger = life_hunger;
		_getThirst = life_thirst;
		
		// why to dooo dat??? :)
		_health = ["ERROR", "ERROR"];
		_stamina = ["ERROR", "ERROR"];
		_hunger = ["ERROR", "ERROR"];
		_thirst = ["ERROR", "ERROR"];
		
		// prepare the health
		switch(true) do {
			case (_getHealth < 0.10): {_health = ["#00FF4C", parseText format["In salute"]];};
			case (_getHealth < 0.20): {_health = ["#1AFF00", parseText format["Ha qualche graffio"]];};
			case (_getHealth < 0.30): {_health = ["#7BFF00", parseText format["Leggeremente ferito"]];};
			case (_getHealth < 0.40): {_health = ["#BFFF00", parseText format["Non si sente bene"]];};
			case (_getHealth < 0.50): {_health = ["#EAFF00", parseText format["Lieve dolore"]];};
			case (_getHealth < 0.60): {_health = ["#FFBF00", parseText format["Non mi sento veramente bene"]];};
			case (_getHealth < 0.70): {_health = ["#FF8400", parseText format["Qualcosa è rotto"]];};
			case (_getHealth < 0.80): {_health = ["#FF4000", parseText format["Ho lesioni gravi"]];};
			case (_getHealth < 0.90): {_health = ["#FF3500", parseText format["Brucia come il fuoco"]];};
			case (_getHealth < 1): {_health = ["#FF0000", parseText format["Sto morendo"]];};
			case (_getHealth == 1): {_health = ["#C10000", parseText format["Sei morto"]];};
			default {_health = ["#000000", parseText format["ERROR"]];};
		};
		
		// prepare hunger
		switch(true) do {
			case (_getHunger > 90): {_hunger = ["#00FF4C", parseText format["Non affamato"]];};
			case (_getHunger > 80): {_hunger = ["#1AFF00", parseText format["Ho appetito"]];};
			case (_getHunger > 70): {_hunger = ["#7BFF00", parseText format["Potrebbe mangiare qualcosa"]];};
			case (_getHunger > 60): {_hunger = ["#BFFF00", parseText format["Ho bisogno di qualcosa al più presto"]];};
			case (_getHunger > 50): {_hunger = ["#EAFF00", parseText format["Stomaco vuoto"]];};
			case (_getHunger > 40): {_hunger = ["#FFBF00", parseText format["Devo mangiare qualocosa"]];};
			case (_getHunger > 30): {_hunger = ["#FF8400", parseText format["Brontola lo stomaco"]];};
			case (_getHunger > 20): {_hunger = ["#FF4000", parseText format["Devo mangiare qualcosa ora!"]];};
			case (_getHunger > 10): {_hunger = ["#FF3500", parseText format["Inizio a morire di fame"]];};
			case (_getHunger > 0): {_hunger = ["#FF0000", parseText format["Sto morendo di fame"]];};
			case (_getHunger == 0): {_hunger = ["#C10000", parseText format["Sei morto"]];};
			default {_hunger = ["#000000", parseText format["ERROR"]];};
		};
		
		// prepare thirst
		switch(true) do {
			case (_getThirst > 90): {_thirst = ["#00FF4C", parseText format["Non assetato"]];};
			case (_getThirst > 80): {_thirst = ["#1AFF00", parseText format["Un po' d'acqua non sarebbe sbagliato"]];};
			case (_getThirst > 70): {_thirst = ["#7BFF00", parseText format["Potrebbe bere qualcosa"]];};
			case (_getThirst > 60): {_thirst = ["#BFFF00", parseText format["Ho bisogno di bere al più presto"]];};
			case (_getThirst > 50): {_thirst = ["#EAFF00", parseText format["Sono assetato"]];};
			case (_getThirst > 40): {_thirst = ["#FFBF00", parseText format["Ho la gola secca"]];};
			case (_getThirst > 30): {_thirst = ["#FF8400", parseText format["Devo bere qualcosa ora"]];};
			case (_getThirst > 20): {_thirst = ["#FF4000", parseText format["Ho bisogno di un po' di liquido"]];};
			case (_getThirst > 10): {_thirst = ["#FF3500", parseText format["Inizio la disidratazione"]];};
			case (_getThirst > 0): {_thirst = ["#FF0000", parseText format["Sono disidratato"]];};
			case (_getThirst == 0): {_thirst = ["#C10000", parseText format["Sei morto"]];};
			default {_thirst = ["#000000", parseText format["ERROR"]];};
		};
		
		// prepare stamina
		switch(true) do {
			case (_getStamina < 0.10): {_stamina = ["#00FF4C", parseText format["Riposo"]];};
			case (_getStamina < 0.20): {_stamina = ["#1AFF00", parseText format["Posso correre all'infinito"]];};
			case (_getStamina < 0.30): {_stamina = ["#7BFF00", parseText format["Sono un po' affaticato"]];};
			case (_getStamina < 0.40): {_stamina = ["#BFFF00", parseText format["Desidero una pausa"]];};
			case (_getStamina < 0.50): {_stamina = ["#EAFF00", parseText format["Dovrei riposarmi"]];};
			case (_getStamina < 0.60): {_stamina = ["#FFBF00", parseText format["Ho il cuore a mille"]];};
			case (_getStamina > 0.59): {_stamina = ["#FF8400", parseText format["Non riesco più a correre"]];};
			default {_stamina = ["#000000", parseText format["ERROR"]];};
		};
		
		// build it together
		_final = parseText format[
			"<t font='EtelkaNarrowMediumPro' color='#ffffff' size='1.3' align='right'>%1</t><t font='EtelkaNarrowMediumPro' color='#ffffff' size='1.0' align='right'><br/><t color='%2'>%3</t> | <t color='%4'>%5</t> | <t color='%6'>%7</t> | <t color='%8'>%9</t>", 
			(name player),
			_health select 0, _health select 1,
			_stamina select 0, _stamina select 1, 
			_hunger select 0, _hunger select 1, 
			_thirst select 0, _thirst select 1
		];
		
		// show it when ready
		if(!tlg_IntroOn) then {
			((uiNamespace getVariable "tlgStatusbar")displayCtrl 1000)ctrlSetStructuredText _final;
		} else {
			_final = parseText format[""];
			((uiNamespace getVariable "tlgStatusbar")displayCtrl 1000)ctrlSetStructuredText _final;
		};
	}; 
};