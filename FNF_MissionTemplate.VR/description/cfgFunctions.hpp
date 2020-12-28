class CfgFunctions {
  class PHX {
    class init {
      class varsInit{file = "config.sqf"; preInit = 1;};
      class sekritVars{file = "description\sekrit.sqf"; preInit = 1;};
      class serverInit{file = "server\init\serverInit.sqf"; postInit = 1;};
      class clientInit{file = "client\init\clientInit.sqf"; postInit = 1;};
      class clientCanPlay{file = "client\init\fn_clientCanPlay.sqf"};
      class clientSetup{file = "client\init\fn_client_setupGame.sqf"};
    };
    class briefing {
      file = "client\briefing";
      class briefInit{};
      class setGroupIDs{};
      class createBrief{};
      class createOrbat{};
    };
    class radio {
      file = "client\radio";
      class radio_waitGear{};
      class radio_getChannels{};
      class radio_setRadios{};
      class radio_cleanup{};
    };
    class spectator {
      file = "client\spectator";
      class spectatorInit{};
    };
    class loadout {
      file = "client\loadout";
      class setLoadout{};
      class setUniform{};
      class setWeapons{};
      class addUniform{};
      class addWeapons{};
      class addGear{};
      class addMagazines{};
      class addItems{};
      class checkLoadout{};
      class gearSelector{};
    };
    class restrictions {
      file = "client\restrictions";
      class restrictions{};
      class disableMisc{};
      class afkCheck{};
      class disableTyping{};
      class removeRespawnButton{};
      class hideMarkers{};
      class restrictUniform{};
      class zoneBoundary{};
      class startBoundary{};
      class restrictETool{};
      class restrictGamma{};
    };
    class safety {
      file = "client\safety";
      class safety{};
    };
    class misc {
      file = "client\misc";
      class hintThenClear{};
      class fortifyClient{};
      class clientTime{};
    };
    class unflip {
      file = "client\misc\unflip";
      class unflipVehicle{};
      class unflipVehicleAddAction{};
    };
    class initServer {
      file = "server\init";
      class serverSafety{};
      class sendUniforms{};
      class fortifyServer{};
      class objBuildingDamage{};
      class server_setupGame{};
      class radio_genFreqs{};
    };
    class end {
      file = "server\end";
      class checkAlive{};
      class checkTime{};
      class overTimeEnd{};
    };
  };
};