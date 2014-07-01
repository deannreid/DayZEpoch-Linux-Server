private["_id","_uid","_key"];
_id 	= _this select 0;
_uid 	= _this select 1;
_activatingPlayer 	= _this select 2;

if (isServer) then {
	//remove from database
	if (parseNumber _id > 0) then {
		//Send request
		diag_log format["CHILD:304:%1:",_id];
		diag_log format["DELETE: %1 Deleted by ID: %2",_activatingPlayer,_id];
	} else  {
		//Send request
		diag_log format["CHILD:310:%1:",_uid];
		diag_log format["DELETE: %1 Deleted by UID: %2",_activatingPlayer,_uid];
	};
};