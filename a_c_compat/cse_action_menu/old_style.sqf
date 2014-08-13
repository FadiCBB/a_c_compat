// This all uses the interaction menu style of CSE pre-3.0

// Barrel Swap

["SelfInteraction","Swap Barrel",{ ("AGM_SpareBarrel" in items player) && (getNumber (configFile >> 'CfgWeapons' >> currentWeapon player >> 'AGM_Overheating_allowSwapBarrel') == 1) },{
	 [currentWeapon player] call AGM_Overheating_fnc_swapBarrel;
},100] call cse_fnc_gui_addMenuEntry;

// Drop ruck

["SelfInteraction","Drop Backpack",{true},{
	player action ["PutBag"];
},303] call cse_fnc_gui_addMenuEntry;

// Group management

["SelfInteraction","Group Management > ",{ count (units group player) > 1 },{
	_subMenus = [
	 	["Take Leadership",{ (count (units group player) > 1) && {leader group player != player} },{
			_newGroup = createGroup side player; (units group player) joinSilent _newGroup; _newGroup selectLeader player;
		}],
	  	["Leave Group",{ (count (units group player) > 1) },{
			_oldGroup = units group player; _newGroup = createGroup side player; [player] joinSilent _newGroup; {player reveal _x} forEach _oldGroup;
		}]
 	];
 	["Group Management",_this select 2, _subMenus] call cse_fnc_gui_displaySubMenuButtons;
 },300] call cse_fnc_gui_addMenuEntry;

["InteractionMenu","Group Management > ",{ (playerSide == side cse_interactionTarget) && (group player != group cse_interactionTarget) && ((player distance cursortarget) < 10) },{
	_subMenus = [

	  	["Join Group",{ (playerSide == side cse_interactionTarget) && (group player != group cse_interactionTarget) && ((player distance cursortarget) < 10) },{
			[player] joinSilent cse_interactionTarget;
		}]
 	];
 	["Group Management",_this select 2, _subMenus] call cse_fnc_gui_displaySubMenuButtons;
 },300] call cse_fnc_gui_addMenuEntry;

// Weapon on back

 ["SelfInteraction","Weapon On Back",{true},{
	closeDialog 0;
	player action ['SwitchWeapon', vehicle player, vehicle player, 99];
},302] call cse_fnc_gui_addMenuEntry;

// Gestures

["SelfInteraction","Gestures > ",{true},{
	_subMenus = [
	 	["Advance",{canStand player},{
			player playActionNow 'gestureAdvance';
		}],
	  	["Go",{canStand player},{
			player playActionNow (['gestureGo', 'gestureGoB'] select (floor random 2));
		}],
	  	["Follow",{canStand player},{
			player playActionNow 'gestureFollow';
		}],
	  	["Point",{canStand player},{
			player playActionNow 'gesturePoint';
		}],
	  	["Up",{canStand player},{
			player playActionNow 'gestureUp';
		}],
	  	["Cover Me",{canStand player},{
			player playActionNow 'gestureCover';
		}],
	  	["Cease Fire",{canStand player},{
			player playActionNow 'gestureCeaseFire';
		}],
	  	["Yes",{canStand player},{
			player playActionNow (['gestureYes', 'gestureNod'] select (floor random 2));
		}],
	  	["No",{canStand player},{
			player playActionNow 'gestureNo';
		}],
	  	["Hi",{canStand player},{
			player playActionNow (['gestureHi', 'gestureHiB', 'gestureHiC'] select (floor random 3));
		}]
 	];
 	["Gestures",_this select 2, _subMenus] call cse_fnc_gui_displaySubMenuButtons;
 },301] call cse_fnc_gui_addMenuEntry;