// Description: Compatibility layer between AGM and CSE. Includes some AGM features made availible to the CSE interaction menu.
// I've gone ahead and put this on Github.


class CfgPatches
{
	class a_c_compat
	{
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"cse_main", "cse_gui", "cse_f_eh", "AGM_Core"};
		author[] = {"Fadi"};
		authorUrl = "https://github.com/FadiCBB/a_c_compat";
	};
};

class Extended_PostInit_EventHandlers
{

	// Required Component: AGM_Overheating
	class agm_barrel_swap
	{
		clientInit = "0 = [] spawn compile preProcessFileLineNumbers '\a_c_compat\cse_action_menu\agm_barrel_swap.sqf'";
	};

	// Required Component: AGM_Wind
	class agm_kestrel
	{
		clientInit = "0 = [] spawn compile preProcessFileLineNumbers '\a_c_compat\cse_action_menu\agm_kestrel.sqf'";
	};

	// Required Component: AGM_Explosives
	class agm_explosives
	{
		clientInit = "0 = [] spawn compile preProcessFileLineNumbers '\a_c_compat\cse_action_menu\agm_explosives.sqf'";
	};

	// Required Component: AGM_Logistics
	class agm_logistics
	{
		clientInit = "0 = [] spawn compile preProcessFileLineNumbers '\a_c_compat\cse_action_menu\agm_logistics.sqf'";
	};

	// Required Component: None
	class drop_ruck
	{
		clientInit = "0 = [] spawn compile preProcessFileLineNumbers '\a_c_compat\cse_action_menu\misc_drop_ruck.sqf'";
	};

	// Required Component: None
	// Note: CSE includes joining and leaving groups however there is no way to take control of a group.
	class group_management
	{
		clientInit = "0 = [] spawn compile preProcessFileLineNumbers '\a_c_compat\cse_action_menu\misc_group_management.sqf'";
	};

	// Required Component: None
	class weapon_on_back
	{
		clientInit = "0 = [] spawn compile preProcessFileLineNumbers '\a_c_compat\cse_action_menu\misc_weapon_on_back.sqf'";
	};
};

