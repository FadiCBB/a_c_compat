if (isDedicated) exitwith{};
waituntil{!isnil "cse_gui"};


cse_agm_barrelswap = {
	[_this] call cse_fnc_Debug;
	private ["_subMenus"];
		_subMenus = [];
		[currentWeapon player] call AGM_Overheating_fnc_swapBarrel;

	[ _this select 3, _subMenus, _this select 1, CSE_SELECTED_RADIAL_OPTION_N_GUI, true] call cse_fnc_openRadialSecondRing_GUI;
};

_entries = [
	["Swap Barrel", { ("AGM_SpareBarrel" in items player) && (getNumber (configFile >> 'CfgWeapons' >> currentWeapon player >> 'AGM_Overheating_allowSwapBarrel') == 1) }, "\AGM_Overheating\UI\spare_barrel_ca.paa", cse_agm_barrelswap, "Swaps your barrel with your spare"]
];
["ActionMenu","equipment", _entries ] call cse_fnc_addMultipleEntriesToRadialCategory_F;