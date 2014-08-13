if (isDedicated) exitwith{};
waituntil{!isnil "cse_gui"};

CSE_ICON_PATH = "cse\cse_gui\radialmenu\data\icons\";

cse_agm_carrylog = {
	[_this] call cse_fnc_Debug;
	private ["_subMenus"];
		_subMenus = [];

		if ([_this select 0,_this select 1,[0,1.5,1],true] call cse_fnc_carryObj) then { closeDialog 0; hint format["You move this object"]; };

	[ _this select 3, _subMenus, _this select 1, CSE_SELECTED_RADIAL_OPTION_N_GUI, true] call cse_fnc_openRadialSecondRing_GUI;
};

_entries = [
	["Carry", {
		(((_this select 1) getVariable ["CSE_Logistics_Enable", true])
		&&
		(((_this select 1) iskindof "Land_CanisterFuel_F") OR	((_this select 1) iskindof "ThingX"))
		&& (isNull ([(_this select 0)] call cse_fnc_getCarriedObj)) && (((_this select 1) distance player) < 4))
		&& !(((_this select 1) iskindof "ReammoBox") OR	((_this select 1) iskindof "ReammoBox_F"))
	}, CSE_ICON_PATH + "icon_open_dialog.paa", cse_agm_carrylog, "Carries a logistic object."]
];
["ActionMenu","interaction", _entries ] call cse_fnc_addMultipleEntriesToRadialCategory_F;