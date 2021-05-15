phx_loadout_aid call phx_fnc_addGear;
phx_loadout_smoke call phx_fnc_addGear;
phx_loadout_maptools call phx_fnc_addGear;
phx_loadout_cableTie call phx_fnc_addGear;

phx_loadout_grenade call phx_fnc_addGear;

switch (pRole) do {
  case ROLE_CE: {
    {
      if (_forEachIndex != 0) then {_x call phx_fnc_addGear};
    } forEach phx_loadout_explosives;
    phx_loadout_defusalkit call phx_fnc_addGear;
    phx_loadout_trigger call phx_fnc_addGear;
    phx_loadout_fuse call phx_fnc_addGear;
    phx_loadout_entrenching call phx_fnc_addGear;
    phx_loadout_detector call phx_fnc_addGear;
  };
  case ROLE_MGTL: {phx_loadout_entrenching call phx_fnc_addGear};
  case ROLE_CLS: {
    [phx_loadout_PAK, "backpack"] call phx_fnc_addGear;
    [phx_loadout_bandage, "backpack"] call phx_fnc_addGear;
    [phx_loadout_morphine, "backpack"] call phx_fnc_addGear;
    [phx_loadout_epinephrine, "backpack"] call phx_fnc_addGear;
    [phx_loadout_blood_1, "backpack"] call phx_fnc_addGear;
    [phx_loadout_blood_2, "backpack"] call phx_fnc_addGear;
  };
};

if (pRole in [ROLE_PL,ROLE_SL,ROLE_TL,ROLE_MGTL,ROLE_AAR,ROLE_AAT,ROLE_AM,ROLE_CR]) then {player addWeapon phx_loadout_binocular};

if (pRole == ROLE_MK) then {/*"ACE_Tripod" call phx_fnc_addGear;*/ "ACE_RangeCard" call phx_fnc_addGear;};
