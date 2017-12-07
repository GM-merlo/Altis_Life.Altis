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
_message = "Questo non è un test. è il vostro sistema di trasmissione di emergenza che annuncia l'inizio dello sfogo annuale sancito dal governo di Lion Life, è autorizzato l'uso di armi classe 4 e inferiore durante lo sfogo, tutte le altre armi sono proibite. Ai funzionari governativi di livello 10 è stata concessa l'immunità e non sarà fatto loro del male. Al suono della sirena ogni crimine incluso l'omicidio sara legale per le successive 12 ore. Polizia, vigili del fuoco e servizi sanitari di emergenza non saranno attivi prima delle 7 di domani mattina, alla conclusione dello sfogo, Bendetti i nostri nuovi padri fondatori e Lion life una nazione risorta che dio sia con VOI!";
[_message,name player,6] remoteExec ["TON_fnc_clientMessage",0];
[Tower_1, "purge",5000] remoteExec ["life_fnc_playSound",0];
[Tower_2, "purge",5000] remoteExec ["life_fnc_playSound",0];
[Tower_3, "purge",5000] remoteExec ["life_fnc_playSound",0];
[Tower_4, "purge",5000] remoteExec ["life_fnc_playSound",0];
[Tower_5, "purge",5000] remoteExec ["life_fnc_playSound",0];
[Tower_6, "purge",5000] remoteExec ["life_fnc_playSound",0];
[Tower_7, "purge",5000] remoteExec ["life_fnc_playSound",0];
[Tower_8, "purge",5000] remoteExec ["life_fnc_playSound",0];
[Tower_9, "purge",5000] remoteExec ["life_fnc_playSound",0];
[Tower_10, "purge",5000] remoteExec ["life_fnc_playSound",0];
[Tower_11, "purge",5000] remoteExec ["life_fnc_playSound",0];
[Tower_12, "purge",5000] remoteExec ["life_fnc_playSound",0];
[Tower_13, "purge",5000] remoteExec ["life_fnc_playSound",0];
[Tower_14, "purge",5000] remoteExec ["life_fnc_playSound",0];
[Tower_15, "purge",5000] remoteExec ["life_fnc_playSound",0];
[Tower_16, "purge",5000] remoteExec ["life_fnc_playSound",0];
[Tower_17, "purge",5000] remoteExec ["life_fnc_playSound",0];
[Tower_18, "purge",5000] remoteExec ["life_fnc_playSound",0];
[Tower_19, "purge",5000] remoteExec ["life_fnc_playSound",0];
[Tower_20, "purge",5000] remoteExec ["life_fnc_playSound",0];
[Tower_21, "purge",5000] remoteExec ["life_fnc_playSound",0];
[Tower_22, "purge",5000] remoteExec ["life_fnc_playSound",0];
[Tower_23, "purge",5000] remoteExec ["life_fnc_playSound",0];
[Tower_24, "purge",5000] remoteExec ["life_fnc_playSound",0];
[Tower_25, "purge",5000] remoteExec ["life_fnc_playSound",0];
[Tower_26, "purge",5000] remoteExec ["life_fnc_playSound",0];
sleep 70;
_message = "Lo sfogo inizia ORA! Ci saranno messaggi per allertarti quanto manca alla fine dell'evento. Combatti o Nasconditi, questa è una tua scelta.<br/><br/>Che lo sfogo...<br/><br/><t size='2.5'><t color='#FF1500'>INIZI!!</t></t>";
[_message,name player,6] remoteExec ["TON_fnc_clientMessage",civilian];
sleep 180;
sleep 180;
sleep 180; 
//For some reason, anything over 250 wouldn't work, so i split them up.
sleep 180;
sleep 180;
_message = "Lo sfogo è a meta! Ci sono solo 15 minuti rimamenti!";
[_message,name player,6] remoteExec ["TON_fnc_clientMessage",civilian];
sleep 180;
sleep 180;
sleep 180;
sleep 180;
sleep 180;
_message = "Lo sfogo durerà ancora per 5 minuti!";
[_message,name player,6] remoteExec ["TON_fnc_clientMessage",civilian];
sleep 150;
sleep 150;
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
_message = "Lo Sfogo è ufficialmente terminato. Grazie per aver partecipato allo Sfogo, hai contribuito a ridurre la povertà e la criminalità. Tutti i corpi di emergenza ora sono in servizio. I crimini ora sono illegali.<br/><br/><t size='2.5'><t color='#FF1500'>Tutte le regole del server sono di nuovo in vigore.</t></t>";
[_message,name player,6] remoteExec ["TON_fnc_clientMessage",civilian];
[3,"STR_ISTR_Item_Alert",true,[profileName]] remoteExec ["life_fnc_broadcast",0];
life_event = false; 
