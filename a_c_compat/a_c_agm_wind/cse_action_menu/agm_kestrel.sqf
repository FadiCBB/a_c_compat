if (isDedicated) exitwith{};
waituntil{!isnil "cse_gui"};

ac_agm_openkestrel = {
	[_this] call cse_fnc_Debug;
	private ["_subMenus"];
		_subMenus = [];

		call AGM_Wind_fnc_openKestrel;

	[ _this select 3, _subMenus, _this select 1, CSE_SELECTED_RADIAL_OPTION_N_GUI, true] call cse_fnc_openRadialSecondRing_GUI;
};

_entries = [
	["Open Kestrel", { ("AGM_ItemKestrel" in items player) && (!underwater player) && (!AGM_isKestrel) }, "\AGM_Wind\data\4500NV.paa", ac_agm_openkestrel, "Opens your Kestrel."]
];
["ActionMenu","equipment", _entries ] call cse_fnc_addMultipleEntriesToRadialCategory_F;

ac_agm_closekestrel = {
	[_this] call cse_fnc_Debug;
	private ["_subMenus"];
		_subMenus = [];

		AGM_isKestrel = false;

	[ _this select 3, _subMenus, _this select 1, CSE_SELECTED_RADIAL_OPTION_N_GUI, true] call cse_fnc_openRadialSecondRing_GUI;
};

_entries = [
	["Close Kestrel", { AGM_isKestrel }, "\AGM_Wind\data\4500NV.paa", ac_agm_closekestrel, "Puts your Kestrel away."]
];
["ActionMenu","equipment", _entries ] call cse_fnc_addMultipleEntriesToRadialCategory_F;