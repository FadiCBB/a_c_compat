class CfgPatches
{
	class a_c_misc
	{
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"cse_main", "cse_gui", "cse_f_eh"};
		author[] = {};
		authorUrl = "https://github.com/FadiCBB/a_c_compat";
	};
};

class Extended_PostInit_EventHandlers
{
	class a_c_drop_ruck
	{
		clientInit = "0 = [] spawn compile preProcessFileLineNumbers '\a_c_misc\cse_action_menu\misc_drop_ruck.sqf'";
	};
	// Note: CSE includes joining and leaving groups however there is no way to take control of a group.
	class a_c_group_management
	{
		clientInit = "0 = [] spawn compile preProcessFileLineNumbers '\a_c_misc\cse_action_menu\misc_group_management.sqf'";
	};
	class a_c_weapon_on_back
	{
		clientInit = "0 = [] spawn compile preProcessFileLineNumbers '\a_c_misc\cse_action_menu\misc_weapon_on_back.sqf'";
	};
};

