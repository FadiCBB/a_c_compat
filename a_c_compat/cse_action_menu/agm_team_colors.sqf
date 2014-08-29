if (isDedicated) exitwith{};
waituntil{!isnil "cse_gui"};

CSE_ICON_PATH = "cse\cse_gui\radialmenu\data\icons\";

cse_agm_teamred = {
	[_this] call cse_fnc_Debug;
	private ["_subMenus"];
		_subMenus = [];

		[cse_interactionTarget, 'RED'] call AGM_Interaction_fnc_joinTeam;

	[ _this select 3, _subMenus, _this select 1, CSE_SELECTED_RADIAL_OPTION_N_GUI, true] call cse_fnc_openRadialSecondRing_GUI;
};

_entries = [
	["Team Red", { (count (units group player) > 1) }, CSE_ICON_PATH + "icon_toggle_self.paa", cse_agm_teamred, "Color yourself red"]
];
["ActionMenu","group_actions", _entries ] call cse_fnc_addMultipleEntriesToRadialCategory_F;

//-------------------------------------------------------------------------------------------

cse_agm_teamgreen = {
	[_this] call cse_fnc_Debug;
	private ["_subMenus"];
		_subMenus = [];

		[cse_interactionTarget, 'GREEN'] call AGM_Interaction_fnc_joinTeam;

	[ _this select 3, _subMenus, _this select 1, CSE_SELECTED_RADIAL_OPTION_N_GUI, true] call cse_fnc_openRadialSecondRing_GUI;
};

_entries = [
	["Team Green", { (count (units group player) > 1) }, CSE_ICON_PATH + "icon_toggle_self.paa", cse_agm_teamgreen, "Color yourself green"]
];
["ActionMenu","group_actions", _entries ] call cse_fnc_addMultipleEntriesToRadialCategory_F;

//-------------------------------------------------------------------------------------------

cse_agm_teamblue = {
	[_this] call cse_fnc_Debug;
	private ["_subMenus"];
		_subMenus = [];

		[cse_interactionTarget, 'BLUE'] call AGM_Interaction_fnc_joinTeam;

	[ _this select 3, _subMenus, _this select 1, CSE_SELECTED_RADIAL_OPTION_N_GUI, true] call cse_fnc_openRadialSecondRing_GUI;
};

_entries = [
	["Team Blue", { (count (units group player) > 1) }, CSE_ICON_PATH + "icon_toggle_self.paa", cse_agm_teamblue, "Color yourself blue"]
];
["ActionMenu","group_actions", _entries ] call cse_fnc_addMultipleEntriesToRadialCategory_F;

//-------------------------------------------------------------------------------------------

cse_agm_teamyellow = {
	[_this] call cse_fnc_Debug;
	private ["_subMenus"];
		_subMenus = [];

		[cse_interactionTarget, 'YELLOW'] call AGM_Interaction_fnc_joinTeam;

	[ _this select 3, _subMenus, _this select 1, CSE_SELECTED_RADIAL_OPTION_N_GUI, true] call cse_fnc_openRadialSecondRing_GUI;
};

_entries = [
	["Team Yellow", { (count (units group player) > 1) }, CSE_ICON_PATH + "icon_toggle_self.paa", cse_agm_teamyellow, "Color yourself yellow"]
];
["ActionMenu","group_actions", _entries ] call cse_fnc_addMultipleEntriesToRadialCategory_F;