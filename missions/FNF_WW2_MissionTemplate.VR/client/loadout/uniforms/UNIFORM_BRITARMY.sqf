#include "..\cfgLoadouts.hpp"

//Global customization - will be applied to every role
phx_loadout_uniform = "fow_u_uk_bd40_private";
phx_loadout_vest = "V_LIB_UK_P37_Rifleman_Blanco";
phx_loadout_backpack = "B_LIB_UK_HSack";
phx_loadout_headgear = "fow_h_uk_mk2";

if (pRole == ROLE_PL || pRole == ROLE_SL) then {
  phx_loadout_uniform = "fow_u_uk_bd40_lieutenant";
  phx_loadout_vest = "fow_v_uk_officer";
};
if (pRole == ROLE_SL) then {
  phx_loadout_uniform = "fow_u_uk_bd40_sergeant";
};

if (pRole == ROLE_TL || pRole == ROLE_MGTL) then {
  phx_loadout_uniform = "fow_u_uk_bd40_lance_corporal";
};

if (pRole == ROLE_AR || pRole == ROLE_MG) then {phx_loadout_vest = "fow_v_uk_bren"};
//if (pRole == ROLE_MG) then {};

//Use if you want to customize more
switch (pRole) do {
  case ROLE_PL: {}; //Platoon leader
  case ROLE_CLS: {}; //Medic
  case ROLE_SL: {}; //Squad leader
  case ROLE_TL: {}; //Team leader
  case ROLE_AR: {}; //Automatic rifleman
  case ROLE_AAR: {}; //Assistant automatic rifleman
  case ROLE_RAT: {}; //Rifleman (LAT)
  case ROLE_CE: {}; //Combat engineer
  case ROLE_R: {}; //Rifleman
  case ROLE_MG: {}; //Machinegunner
  case ROLE_AM: {}; //Ammo man
  case ROLE_MGTL: {}; //Machine gun team leader
  case ROLE_AT: {
    }; //Medium Anti-tank
  case ROLE_AAT: {
    }; //Assistant anti-tank
  case ROLE_P: {
    phx_loadout_uniform = "U_LIB_UK_DenisonSmock";
    phx_loadout_vest = "fow_v_us_45";
    phx_loadout_backpack = "fow_b_parachute";
    phx_loadout_headgear = "fow_h_us_flight_helmet";
    }; //Pilot
  case ROLE_CR: {
    phx_loadout_backpack = "";
    phx_loadout_vest = "fow_v_us_45";
    }; //Crewman
  case ROLE_MK: {}; //Marksman
};

//This will give PLs and SLs radio backpacks, remove if wanted
if (pRole == ROLE_PL || pRole == ROLE_SL || pROLE == ROLE_MGTL || pRole == ROLE_TL) then {
  phx_loadout_backpack = "B_LIB_US_Radio";
};

if (pRole == ROLE_CR && ((leader group player) == player)) then {
  phx_loadout_backpack = "B_LIB_US_Radio";
};
