// Name: AGM Gestures
// Type: Self interaction
// Calls the AGM gesture functions through the CSE menu.

/*if (isDedicated) exitwith{};
waituntil{!isnil "cse_gui"};*/

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
 	["Gestures",_this select 2, _subMenus] call cse_fnc_gui_displaySubMenuButtons; // (_this select 2) is necessary to determine the correct placement of sub menus. It contains the IDC of the pressed button.
 },301] call cse_fnc_gui_addMenuEntry;