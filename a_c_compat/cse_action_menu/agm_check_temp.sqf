if (isDedicated) exitwith{};
waituntil{!isnil "cse_gui"};

cse_agm_check_temp = {
	[_this] call cse_fnc_Debug;
	private ["_subMenus"];
		_subMenus = [];
		[currentWeapon player] call AGM_Overheating_fnc_CheckTemperature;

	[ _this select 3, _subMenus, _this select 1, CSE_SELECTED_RADIAL_OPTION_N_GUI, true] call cse_fnc_openRadialSecondRing_GUI;
};

_entries = [
	["Check Temp", { !(currentWeapon player in ["", ([player] call AGM_Core_fnc_getBinocular)]) }, "\AGM_Overheating\UI\spare_barrel_ca.paa", cse_agm_check_temp, "Checks the temperature of your barrell"]
];
["ActionMenu","equipment", _entries ] call cse_fnc_addMultipleEntriesToRadialCategory_F;