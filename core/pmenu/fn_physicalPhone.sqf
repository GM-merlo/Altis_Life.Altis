/*
	File: fn_physicalPhone.sqf
	Author: Vapos
	Description:
	With no radio cant use Cellphone
*/
if("ItemRadio" in assignedItems player) then {
createDialog "Life_cell_phone"; // "Life_cell_phone" or /** Life_my_smartphone **\ if you use the SQL Based Smartphone   By Silex
} else {
hint parseText format ["<t size=1.30' font='puristaMedium' align='center' color='#0D82DF'>Nessun Cellulare</t><br/><br/>
<t size='0.90 'font='puristaLight' align='left'>Devi avere un cellulare (Radio) per usarlo. Puoi comprarlo al general store</t><br/&gt"];
};