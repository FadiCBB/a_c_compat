if (isDedicated) exitwith{};
waituntil{!isnil "cse_gui"};

CSE_ICON_PATH = "cse\cse_gui\radialmenu\data\icons\";

ac_misc_grp_takelead = {
	[_this] call cse_fnc_Debug;
	private ["_subMenus"];
		_subMenus = [];

		_newGroup = createGroup side player; (units group player) joinSilent _newGroup; _newGroup selectLeader player;

	[ _this select 3, _subMenus, _this select 1, CSE_SELECTED_RADIAL_OPTION_N_GUI, true] call cse_fnc_openRadialSecondRing_GUI;
};

_entries = [
	["Take Lead", { (count (units group player) > 1) && (leader group player != player) }, CSE_ICON_PATH + "icon_toggle_self.paa", ac_misc_grp_takelead, "Assets your dominance over the pack."]
];
["ActionMenu","group_actions", _entries ] call cse_fnc_addMultipleEntriesToRadialCategory_F;