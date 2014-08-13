// Name: Weapon On Back
// Type: Self interaction
// Makes a player put their weapon on their back. Putting weapon on back like this has a different set of movements.


if (isDedicated) exitwith{};
waituntil{!isnil "cse_gui"};

CSE_ICON_PATH = "cse\cse_gui\radialmenu\data\icons\";

cse_cbb_weponback = {
	[_this] call cse_fnc_Debug;
	private ["_subMenus"];
		_subMenus = [];
		player action ['SwitchWeapon', vehicle player, vehicle player, 99];

	[ _this select 3, _subMenus, _this select 1, CSE_SELECTED_RADIAL_OPTION_N_GUI, true] call cse_fnc_openRadialSecondRing_GUI;
};

_entries = [
	["On Back", { true }, CSE_ICON_PATH + "icon_magazines.paa", cse_cbb_weponback, "Puts your primary weapon on your back."]
];
["ActionMenu","custom_actions", _entries ] call cse_fnc_addMultipleEntriesToRadialCategory_F;