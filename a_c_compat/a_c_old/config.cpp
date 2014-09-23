class CfgPatches
{
	class a_c_old
	{
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"cse_main", "cse_gui", "cse_f_eh", "AGM_Core"};
		author[] = {};
		authorUrl = "https://github.com/FadiCBB/a_c_compat";
	};
};

class Extended_PostInit_EventHandlers
{
	class a_c_old
	{
		clientInit = "0 = [] spawn compile preProcessFileLineNumbers '\a_c_old\cse_action_menu\old_style.sqf'";
	};
};

