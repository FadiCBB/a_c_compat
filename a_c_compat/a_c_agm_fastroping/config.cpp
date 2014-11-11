class CfgPatches
{
	class a_c_agm_fastroping
	{
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"cse_main", "cse_gui", "cse_f_eh", "AGM_Core", "AGM_FastRoping"};
		author[] = {};
		authorUrl = "https://github.com/FadiCBB/a_c_compat";
	};
};

class Extended_PostInit_EventHandlers
{
	class a_c_fastroping
	{
		clientInit = "0 = [] spawn compile preProcessFileLineNumbers '\a_c_agm_fastroping\cse_action_menu\agm_fastroping.sqf'";
	};
};

