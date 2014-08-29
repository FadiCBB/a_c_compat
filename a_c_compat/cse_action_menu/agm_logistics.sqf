if (isDedicated) exitwith{};
waituntil{!isnil "cse_gui"};

CSE_ICON_PATH = "cse\cse_gui\radialmenu\data\icons\";

ac_agm_carrylog = {
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
	}, CSE_ICON_PATH + "icon_open_dialog.paa", ac_agm_carrylog, "Carries a logistic object."]
];
["ActionMenu","interaction", _entries ] call cse_fnc_addMultipleEntriesToRadialCategory_F;

/*
cse_agm_getin_csw = {
	[_this] call cse_fnc_Debug;
	private ["_subMenus"];
		_subMenus = [];
		[AGM_Interaction_Target] call AGM_StaticWeapons_fnc_getIn;

	[ _this select 3, _subMenus, _this select 1, CSE_SELECTED_RADIAL_OPTION_N_GUI, true] call cse_fnc_openRadialSecondRing_GUI;
};

_entries = [
	["Use CSW", { [AGM_Interaction_Target] call AGM_StaticWeapons_fnc_canGetIn }, CSE_ICON_PATH + "icon_open_dialog.paa", cse_agm_getin_csw, "Use CSW"]
];
["ActionMenu","equipment", _entries ] call cse_fnc_addMultipleEntriesToRadialCategory_F;

cse_agm_rcw_csw = {
	[_this] call cse_fnc_Debug;
	private ["_subMenus"];
		_subMenus = [];
		[AGM_Interaction_Target, true] call AGM_StaticWeapons_fnc_canRotate;

	[ _this select 3, _subMenus, _this select 1, CSE_SELECTED_RADIAL_OPTION_N_GUI, true] call cse_fnc_openRadialSecondRing_GUI;
};

_entries = [
	["Rotate Clockwise", { [AGM_Interaction_Target, true] call AGM_StaticWeapons_fnc_canRotate }, CSE_ICON_PATH + "icon_open_dialog.paa", cse_agm_rcw_csw, "Rotate Clockwise"]
];
["ActionMenu","equipment", _entries ] call cse_fnc_addMultipleEntriesToRadialCategory_F;


cse_agm_rccw_csw = {
	[_this] call cse_fnc_Debug;
	private ["_subMenus"];
		_subMenus = [];
		[AGM_Interaction_Target, false] call AGM_StaticWeapons_fnc_rotate;

	[ _this select 3, _subMenus, _this select 1, CSE_SELECTED_RADIAL_OPTION_N_GUI, true] call cse_fnc_openRadialSecondRing_GUI;
};

_entries = [
	["Rotate Counter Clockwise", { [AGM_Interaction_Target, false] call AGM_StaticWeapons_fnc_canRotate }, CSE_ICON_PATH + "icon_open_dialog.paa", cse_agm_rccw_csw, "Rotate Counter Clockwise"]
];
["ActionMenu","equipment", _entries ] call cse_fnc_addMultipleEntriesToRadialCategory_F;

cse_agm_wire = {
	[_this] call cse_fnc_Debug;
	private ["_subMenus"];
		_subMenus = [];
		[5, AGM_Interaction_Target] call AGM_Wirecutter_fnc_cutDownFence;

	[ _this select 3, _subMenus, _this select 1, CSE_SELECTED_RADIAL_OPTION_N_GUI, true] call cse_fnc_openRadialSecondRing_GUI;
};

_entries = [
	["Cut Wire", { ("ToolKit" in items player) && {alive AGM_Interaction_Target} }, CSE_ICON_PATH + "icon_open_dialog.paa", cse_agm_wire, "Cut Wire"]
];
["ActionMenu","equipment", _entries ] call cse_fnc_addMultipleEntriesToRadialCategory_F;
*/