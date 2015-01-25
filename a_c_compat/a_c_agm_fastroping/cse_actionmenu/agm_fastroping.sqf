// TODO: Test one AGM updates next

if (isDedicated) exitwith{};
waituntil{!isnil "cse_gui"};

CSE_ICON_PATH = "cse\cse_gui\radialmenu\data\icons\";

//--------------------------------------------------------------------

cse_agm_deployropes = {
	[_this] call cse_fnc_Debug;
	private ["_subMenus"];
		_subMenus = [];

		[_vehicle] call AGM_FastRoping_fnc_deployRopes;

	[ _this select 3, _subMenus, _this select 1, CSE_SELECTED_RADIAL_OPTION_N_GUI, true] call cse_fnc_openRadialSecondRing_GUI;
};

_entries = [
	["Deploy Ropes", {
		(locked _vehicle <= 1) and !(_vehicle getVariable ['AGM_RopesDeployed', False]) and (getPos _vehicle select 2) > 5 and (getNumber (configFile >> 'CfgVehicles' >> typeOf _vehicle >> 'AGM_FastRoping')) == 1
	}, CSE_ICON_PATH + "icon_open_dialog.paa", cse_agm_deployropes, "Deploy Ropes"]
];
["ActionMenu","interaction", _entries ] call cse_fnc_addMultipleEntriesToRadialCategory_F;

//--------------------------------------------------------------------

cse_agm_fastrope = {
	[_this] call cse_fnc_Debug;
	private ["_subMenus"];
		_subMenus = [];

		[_player, _vehicle] call AGM_FastRoping_fnc_fastRope;

	[ _this select 3, _subMenus, _this select 1, CSE_SELECTED_RADIAL_OPTION_N_GUI, true] call cse_fnc_openRadialSecondRing_GUI;
};

_entries = [
	["Fast Rope", {

		(locked _vehicle <= 1) and (_vehicle getVariable ['AGM_RopesDeployed', False]) and (vectorMagnitude (velocity _vehicle) < 4) and (count ([_vehicle getVariable ['AGM_RopesOccupied', []], {!_this}] call AGM_Core_fnc_filter) > 0)

	}, CSE_ICON_PATH + "icon_open_dialog.paa", cse_agm_fastrope, "Fast Rope"]
];
["ActionMenu","interaction", _entries ] call cse_fnc_addMultipleEntriesToRadialCategory_F;

//--------------------------------------------------------------------

cse_agm_cutropes = {
	[_this] call cse_fnc_Debug;
	private ["_subMenus"];
		_subMenus = [];

		[_vehicle] call AGM_FastRoping_fnc_cutRopes;

	[ _this select 3, _subMenus, _this select 1, CSE_SELECTED_RADIAL_OPTION_N_GUI, true] call cse_fnc_openRadialSecondRing_GUI;
};

_entries = [
	["Cut Ropes", {
		(_vehicle getVariable ['AGM_RopesDeployed', False]) and (count ([_vehicle getVariable ['AGM_RopesOccupied', []], {_this}] call AGM_Core_fnc_filter) == 0)
	}, CSE_ICON_PATH + "icon_open_dialog.paa", cse_agm_cutropes, "Cut Ropes"]
];
["ActionMenu","interaction", _entries ] call cse_fnc_addMultipleEntriesToRadialCategory_F;