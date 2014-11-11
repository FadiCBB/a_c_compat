a_c_compat
==========


Background:
---------------------------
This is a (tiny) compatibility layer between AGM (Authentic Gameplay Modification) and CSE (Combat Space Enhancement) that I maintain for the group I play with [albeit in a slightly different form]. This can be of use to others though so I've opted to throw it on Github.

In short, all this currently does is call some of the AGM functions through the CSE interaction menu.

Why the CSE one? The medical menu is pretty important and we've opted to use that as the primary interface.

If anyone has anything they'd like to contribute, please submit a pull request and I'll test and merge it.

To-do:
---------------------------

  - Fast Roping

    Required Component: AGM_FastRoping

    Description: Self explanitory. A prep version of this has been added however I haven't tested it and won't until the next stable update.

Included components:
---------------------------

  - **Barrel Swap**

    Required Component: AGM_Overheating

    Description: The ability to swap your barrel for a spare through the CSE menu.
    
  - **Check Temperature**

    Required Component: AGM_Overheating

    Description: The ability to check your weapons temperature through the CSE menu.

  - **Kestrel**

    Required Component: AGM_Wind

    Description: Opening and closing the Kestrel through the CSE menu.

  - **Explosives**

    Required Component: AGM_Explosives

    Description: The ability to use the new AGM explosives system through the CSE menu.
    
  - **Team Colors**

    Required Component: AGM_Interaction

    Description: Allows you to set colors for your self or others in your team through the CSE menu.
    
    Note: Like in Arma 2, squad leads cannot color themselves. Using this however other team members can color the SL.

  - **Logistics**

    Required Component: AGM_Logistics

    Description: The ability to pick up spare tires, tracks and jerry cans using the CSE logistics system.

    Note: This will probably not be finished by me.

  - **Drop Ruck**

    Required Component: None

    Description: The ability to drop your backpack through the CSE menu.
      
  - **Weapon On Back**

    Required Componenet: None

    Description: Lets you place your primary weapon on your back

Ideas for anyone looking to contribute:
---------------------------

  - Making the earplugs from AGM_Hearing availible in the CSE menu

  - Applying CSE unconscious state to AGM_GForces

  - Finishing AGM logistics (more specifically the AGM cargo menu itself as well as the locational repair system)

  - The AGM "get in" system

  - The AGM reload system for vehicles

  - Making the CSE medical menu availible in the AGM interaction or flow menu

Credits:
---------------------------
Really, I haven't actually done a lot of work here.

The teams for both have put amazing work into their respective mods and any thanks should go to them for essentially saving Arma 3 from vanilla gameplay.
