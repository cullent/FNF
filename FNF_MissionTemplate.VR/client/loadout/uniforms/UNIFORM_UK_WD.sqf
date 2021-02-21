#include "..\cfgLoadouts.hpp"

//Global customization - will be applied to every role
//Must have a uniform and/or helmet defined here to make the uniform diary record appear
phx_loadout_uniform  = "U_mas_ukl_B_CombatUniform_aor2";
phx_loadout_vest     = "V_mas_ukl_PlateCarrierRF_green";
phx_loadout_backpack = "B_Kitbag_rgr";
phx_loadout_headgear = "H_mas_ukl_opscore_gog_aor2";

if (pRole == ROLE_PL || pRole == ROLE_SL || pRole == ROLE_TL || pRole == ROLE_MGTL) then {phx_loadout_vest = "V_mas_ukl_PlateCarrier1_green";}; //PL, SL, TL, MGTL

if (pRole == ROLE_AR || pRole == ROLE_MG) then {phx_loadout_vest = "V_mas_ukl_PlateCarrierAR_green";}; //AR & MG

if (pRole == ROLE_CR) then { phx_loadout_headgear = "H_HelmetCrew_I"; phx_loadout_vest = "V_mas_ukl_PlateCarrierLR_green";}; // Crewman

if (pRole == ROLE_P) then { phx_loadout_headgear = "H_CrewHelmetHeli_B"; phx_loadout_vest = "V_mas_ukl_PlateCarrierLR_green"; phx_loadout_backpack = phx_loadout_lrRadio;}; // Pilot Loadout

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
  case ROLE_AT: {}; //Medium Anti-tank
  case ROLE_AAT: {}; //Assistant anti-tank
  case ROLE_P: {}; //Pilot
  case ROLE_CR: {}; //Crewman
  case ROLE_MK: {}; //Marksman
};

//This will give PLs and SLs radio backpacks, remove if wanted
if (pRole == ROLE_PL || pRole == ROLE_SL) then {
  phx_loadout_backpack = phx_loadout_lrRadio;
};