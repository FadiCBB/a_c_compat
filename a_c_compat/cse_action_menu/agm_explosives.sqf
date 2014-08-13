if (isDedicated) exitwith{};
waituntil{!isnil "cse_gui"};

ac_agm_placeexplosives = {
	[_this] call cse_fnc_Debug;
	private ["_subMenus"];
		_subMenus = [];

		[player] call AGM_Explosives_fnc_openPlaceUI;

	[ _this select 3, _subMenus, _this select 1, CSE_SELECTED_RADIAL_OPTION_N_GUI, true] call cse_fnc_openRadialSecondRing_GUI;
};

_entries = [
	["Place", { (vehicle player == player) and {[player] call AGM_Explosives_fnc_hasExplosives} }, "\a3\weapons_f\data\UI\m_satchel_ca.paa", ac_agm_placeexplosives, "Places explosives."]
];
["ActionMenu","custom_actions", _entries ] call cse_fnc_addMultipleEntriesToRadialCategory_F;

ac_agm_detexplosives = {
	[_this] call cse_fnc_Debug;
	private ["_subMenus"];
		_subMenus = [];

		[player] call AGM_Explosives_fnc_openDetonateUI;

	[ _this select 3, _subMenus, _this select 1, CSE_SELECTED_RADIAL_OPTION_N_GUI, true] call cse_fnc_openRadialSecondRing_GUI;
};

_entries = [
	["Detonate", { [player] call AGM_Explosives_fnc_hasPlacedExplosives and {('AGM_Clacker' in (items player))} }, "\a3\weapons_f\data\UI\m_satchel_ca.paa", ac_agm_detexplosives, "Detonate explosives."]
];
["ActionMenu","custom_actions", _entries ] call cse_fnc_addMultipleEntriesToRadialCategory_F;

ac_agm_defexplosives = {
	[_this] call cse_fnc_Debug;
	private ["_subMenus"];
		_subMenus = [];

		[player, AGM_Interaction_Target] call AGM_Explosives_fnc_StartDefuse;

	[ _this select 3, _subMenus, _this select 1, CSE_SELECTED_RADIAL_OPTION_N_GUI, true] call cse_fnc_openRadialSecondRing_GUI;
};

_entries = [
	["Defuse", { [player] call AGM_Explosives_fnc_CanDefuse }, "\a3\weapons_f\data\UI\m_satchel_ca.paa", ac_agm_defexplosives, "Defuse explosives."]
];
["ActionMenu","custom_actions", _entries ] call cse_fnc_addMultipleEntriesToRadialCategory_F;