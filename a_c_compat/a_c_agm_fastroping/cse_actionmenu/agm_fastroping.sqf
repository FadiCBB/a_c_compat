// TODO: Test one AGM updates next

if (isDedicated) exitwith{};
waituntil{!isnil "cse_gui"};

CSE_ICON_PATH = "cse\cse_gui\radialmenu\data\icons\";

//--------------------------------------------------------------------

cse_agm_deployropes = {
	[_this] call cse_fnc_Debug;
	private ["_subMenus"];
		_subMenus = [];

		[(vehicle _player)] call AGM_FastRoping_fnc_deployRopes;

	[ _this select 3, _subMenus, _this select 1, CSE_SELECTED_RADIAL_OPTION_N_GUI, true] call cse_fnc_openRadialSecondRing_GUI;
};

_entries = [
	["Deploy Ropes", {
		!((vehicle _player) getVariable ['AGM_RopesDeployed', False]) and (getPos (vehicle _player) select 2) > 5 and (getNumber (configFile >> 'CfgVehicles' >> typeOf (vehicle _player) >> 'AGM_FastRoping')) == 1;
	}, CSE_ICON_PATH + "icon_open_dialog.paa", cse_agm_deployropes, "Deploy Ropes"]
];
["ActionMenu","interaction", _entries ] call cse_fnc_addMultipleEntriesToRadialCategory_F;

//--------------------------------------------------------------------

cse_agm_fastrope = {
	[_this] call cse_fnc_Debug;
	private ["_subMenus"];
		_subMenus = [];

		[call AGM_Core_fnc_player, (vehicle _player)] call AGM_FastRoping_fnc_fastRope;

	[ _this select 3, _subMenus, _this select 1, CSE_SELECTED_RADIAL_OPTION_N_GUI, true] call cse_fnc_openRadialSecondRing_GUI;
};

_entries = [
	["Fast Rope", {
		((vehicle _player) getVariable ['AGM_RopesDeployed', False]) and (vectorMagnitude (velocity (vehicle _player)) < 4);
	}, CSE_ICON_PATH + "icon_open_dialog.paa", cse_agm_fastrope, "Fast Rope"]
];
["ActionMenu","interaction", _entries ] call cse_fnc_addMultipleEntriesToRadialCategory_F;

//--------------------------------------------------------------------

cse_agm_cutropes = {
	[_this] call cse_fnc_Debug;
	private ["_subMenus"];
		_subMenus = [];

		((vehicle _player) getVariable ['AGM_RopesDeployed', False]);

	[ _this select 3, _subMenus, _this select 1, CSE_SELECTED_RADIAL_OPTION_N_GUI, true] call cse_fnc_openRadialSecondRing_GUI;
};

_entries = [
	["Cut Ropes", {
		[(vehicle _player)] call AGM_FastRoping_fnc_cutRopes;
	}, CSE_ICON_PATH + "icon_open_dialog.paa", cse_agm_cutropes, "Cut Ropes"]
];
["ActionMenu","interaction", _entries ] call cse_fnc_addMultipleEntriesToRadialCategory_F;