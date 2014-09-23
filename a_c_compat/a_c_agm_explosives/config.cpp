class CfgPatches
{
	class a_c_agm_explosives
	{
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"cse_main", "cse_gui", "cse_f_eh", "AGM_Core", "AGM_Explosives"};
		author[] = {};
		authorUrl = "https://github.com/FadiCBB/a_c_compat";
	};
};

class Extended_PostInit_EventHandlers
{
	class a_c_agm_explosives
	{
		clientInit = "0 = [] spawn compile preProcessFileLineNumbers '\a_c_agm_explosives\cse_action_menu\agm_explosives.sqf'";
	};
};

