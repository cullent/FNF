phx_loadout_backpack = "B_TacticalPack_oli";

if (pRole == ROLE_CLS) then {
  phx_loadout_backpack = "B_FieldPack_oli";
};
if (pRole == ROLE_AAR || pRole == ROLE_AM) then {
  phx_loadout_backpack = "B_Carryall_khk";
};
if (pRole == ROLE_AT || pRole == ROLE_AAT || pRole == ROLE_CE) then {
  phx_loadout_backpack = "B_Kitbag_rgr";
};

if (pRole == ROLE_P) then {
  phx_loadout_headgear = "H_PilotHelmetHeli_O";
  phx_loadout_vest = "V_TacVest_oli";
};
if (pRole == ROLE_CR) then {
  phx_loadout_headgear = "H_HelmetCrew_I";
};
