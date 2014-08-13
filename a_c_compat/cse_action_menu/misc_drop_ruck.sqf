// Name: Drop Ruck
// Type: Self Interaction
// Makes a player drop their backpack, useful for when you hit contact and need to bound and operate quickly.

if (isDedicated) exitwith{};
waituntil{!isnil "cse_gui"};

CSE_ICON_PATH = "cse\cse_gui\radialmenu\data\icons\";

cse_cbb_dropruck = {
	[_this] call cse_fnc_Debug;
	private ["_subMenus"];
		_subMenus = [];
		player action ["PutBag"];

	[ _this select 3, _subMenus, _this select 1, CSE_SELECTED_RADIAL_OPTION_N_GUI, true] call cse_fnc_openRadialSecondRing_GUI;
};

_entries = [
	["Drop Ruck", { true }, "\a3\weapons_f\ammoboxes\bags\data\UI\backpack_ca.paa", cse_cbb_dropruck, "Drops your backpack on the ground"]
];
["ActionMenu","custom_actions", _entries ] call cse_fnc_addMultipleEntriesToRadialCategory_F;