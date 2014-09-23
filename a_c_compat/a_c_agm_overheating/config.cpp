class CfgPatches
{
	class a_c_agm_overheating
	{
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"cse_main", "cse_gui", "cse_f_eh", "AGM_Core", "AGM_Overheating"};
		author[] = {};
		authorUrl = "https://github.com/FadiCBB/a_c_compat";
	};
};

class Extended_PostInit_EventHandlers
{
	class a_c_agm_barrel_swap
	{
		clientInit = "0 = [] spawn compile preProcessFileLineNumbers '\a_c_agm_overheating\cse_action_menu\agm_barrel_swap.sqf'";
	};
	class a_c_agm_check_temp
	{
		clientInit = "0 = [] spawn compile preProcessFileLineNumbers '\a_c_agm_overheating\cse_action_menu\agm_check_temp.sqf'";
	};
};

