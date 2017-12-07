/*  
    File: fn_autoMessages.sqf  
    Author: VaporyDrop911  

    Description:  
    Auto messages in game every X seconds  
*/  

[] spawn {  
    // Add a line in this array to add a message  
    _messages = [  
        "Il server restart ogni 4H:<br/> <t color='#e32828' size='1.5'>24:00 - 4:00 - 8:00 - 12:00 - 16:00 - 20:00</t>",
		"E' consigliato di leggere il regolamento prima di giocare:<br/> <t color='#e32828' size='1.5'>http://lionlifeitalia.forumfree.it/?t=73674285</t>",
        "Nostro Teamspeak 3:<br/><t color='#e32828' size='1.5'>ts.lioncommunity.it</t>"  
    ];  

    _refreshTime = 300; // Time between each message (in seconds)  

    _i = 0;  
    while {true} do {  
        _count = count _messages;  
        _message = _messages select _i;  
        hint parseText format["<t color='#ffffff' size='2'>Lion</t><t color='#c45454' size='2'> Life</t><br/><br/><img shadow='0' size='6' image='textures\logo.paa'/><br/><br/>%1", _message];  
        sleep _refreshTime;  
        if (_i == (_count - 1)) then {  
            _i = 0;  
        } else {  
            _i = _i + 1;  
        };  
    };  
};