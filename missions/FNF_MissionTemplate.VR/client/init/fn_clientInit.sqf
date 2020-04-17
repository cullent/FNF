//Disable global chat
0 enableChannel false;

//Hide markers player shouldn't see
call phx_fnc_markerVisibility;

player addEventHandler ["Killed", {
  call phx_fnc_playerKilled;
}];

//Call safety if mission hasn't started yet. If mission started, run JIP function
waitUntil {!isNil "phx_safetyEnabled"};
if (phx_safetyEnabled) then {true call phx_fnc_safety};
if (!phx_safetyEnabled) exitWith {call phx_fnc_clientJIP};

//Set loadout
call phx_fnc_setLoadout;

// Set the group IDs
call phx_fnc_setGroupIDs;

//Make sure player stays inside start marker
call phx_fnc_startBoundary;

//Make sure player stays within mission zone
call phx_fnc_zoneBoundary;

//Unflip - by KiloSwiss (https://steamcommunity.com/sharedfiles/filedetails/?id=1383176987)
[] spawn phx_fnc_unflipVehicleAddAction;

//Preset radios
phx_radHandle1 = [phx_fnc_radio_waitGear, 0.1, []] call CBA_fnc_addPerFrameHandler;

//Client-side fortify
call phx_fnc_fortifyClient;

//Client-side vehicle locks - see the function for instructions
call phx_fnc_vehicleLocks;

//Client-side game setup
call phx_fnc_client_setupGame;

//Platoon lead menu
call phx_fnc_platoonActions;

//Marker System
[] execVM "QS_icons.sqf";

// Create briefing
[] execVM "client\briefing\briefing.sqf";

// Generate ORBAT page
[] execVM "client\briefing\f_orbatNotes.sqf";

//Weapon selector
[] spawn phx_fnc_weaponSelection;
//////////////////////////////////////////////////////////////////////////////////////////
// Wait for mission to start, then execute post briefing init
[{CBA_missionTime > 0}, {
    call phx_fnc_init_postBriefing;
}, []] call CBA_fnc_waitUntilAndExecute;