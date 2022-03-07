{
  "classtypes": [
    "data",
    "swing",
    "agents",
    "appboot",
    "basher",
    "console",
    "crypto",
    "database",
    "disk",
    "factoryagent",
    "geometry",
    "glossary",
    "larva",
    "map2D",
    "messaging",
    "ontology",
    "sessions",
    "telegram",
    "tools",
    "world",
    "extern"
  ],
  "relationtypes": [
    "extends",
    "owns"
  ],
  "relation": {
    "extends": [
      {
        "LARVABaseAgent": [
          "LARVAAdminAgent",
          "LARVAAdminAgent"
        ]
      },
      {
        "LARVAEphemeral": [
          "SessionManager",
          "StoreManager",
          "SessionManager",
          "StoreManager"
        ]
      },
      {
        "Agent": [
          "LARVABaseAgent",
          "LARVABaseAgent"
        ]
      },
      {
        "SessionManager": [
          "TeamController",
          "WorldController",
          "TeamController",
          "WorldController"
        ]
      },
      {
        "LARVAAdminAgent": [
          "LARVAEphemeral",
          "LARVAEphemeral"
        ]
      }
    ],
    "owns": [
      {
        "TeamController": [
          
        ]
      },
      {
        "LARVAEphemeral": [
          
        ]
      },
      {
        "LARVABaseAgent": [
          
        ]
      },
      {
        "WorldController": [
          
        ]
      },
      {
        "LARVAAdminAgent": [
          "Session"
        ]
      },
      {
        "liveBot": [
          
        ]
      },
      {
        "StoreManager": [
          
        ]
      },
      {
        "SessionManager": [
          
        ]
      },
      {
        "Session": [
          "liveBot"
        ]
      }
    ]
  },
  "publicmethods": {
    "TeamController": [
      "void Execute()",
      "void takeDown()",
      "Status loadWorld()",
      "Status processRequest(ACLMessage incoming)",
      "Status processJoin(ACLMessage incoming)",
      "Status processExecute(ACLMessage incoming)",
      "Status processQuery(ACLMessage incoming)",
      "void processRegister(ACLMessage incoming)"
    ],
    "LARVAEphemeral": [
      "void unTick()",
      "void takeDown()"
    ],
    "WorldController": [
      "void Execute()",
      "void takeDown()",
      "Status loadWorld()",
      "Status processRequest(ACLMessage incoming)",
      "Status processJoin(ACLMessage incoming)",
      "Status processExecute(ACLMessage incoming)",
      "Status processQuery(ACLMessage incoming)"
    ],
    "liveBot": [
      "liveBot(String name, World w)",
      "boolean isAtBase()",
      "JsonObject toJson()",
      "void fromJson(JsonObject update)",
      "String toString()",
      "int getEnergy()",
      "int getOnTarget()",
      "int getAlive()",
      "int getPayload()",
      "ArrayList<Thing> getAllPayload()",
      "void addPayload(Thing what)",
      "String getStatus()",
      "void setStatus(String s)",
      "JsonArray getFullPayload()",
      "Point3D getPosition()",
      "int getEnergyBurnt()",
      "void addEnergyBurnt(int increment)",
      "int getNumSteps()",
      "void addNumSteps(int increment)",
      "Roles getRole()",
      "void setRole(Roles role)",
      "ArrayList<String> getCapabilities()",
      "void addCapabilities(String capability)",
      "ArrayList<String> getAttachments()",
      "void addAttachments(String attachment)",
      "ArrayList<Thing> getThePayload()",
      "void addThePayload(Thing capture)",
      "int getEnergylevel()",
      "void setEnergylevel(int energylevel)",
      "void burnEnergylevel(int increment)",
      "int getBurnmovement()",
      "void setBurnmovement(int burnmovement)",
      "int getBurnsensor()",
      "void setBurnsensor(int burnsensor)",
      "int getMinAllowedLevel()",
      "void setMinAllowedLevel(int minAllowedLevel)",
      "int getMaxAllowedLevel()",
      "void setMaxAllowedLevel(int maxAllowedLevel)",
      "int getRange()",
      "void setRange(int range)",
      "int getAltitude()",
      "void setAltitude(int altitude)",
      "int getInitialDistance()",
      "void setInitialDistance(int initialDistance)",
      "int getCurrentDistance()",
      "void setCurrentDistance(int currentDistance)",
      "String getMyCommitment()",
      "void setMyCommitment(String myCommitment)"
    ],
    "StoreManager": [
      "void Execute()",
      "void processRequest(ACLMessage incoming)",
      "void takeDown()"
    ],
    "SessionManager": [
      "void takeDown()"
    ]
  },
  "protectedmethods": {
    "TeamController": [
      "void updateXUIAgent(String agentname)",
      "void updateXUIGoals()"
    ],
    "LARVAEphemeral": [
      "void onTick()"
    ],
    "WorldController": [
      "void updateXUI(String agentname)"
    ],
    "liveBot": [
      
    ],
    "StoreManager": [
      "void supplyStore()",
      "void buyProduct(ACLMessage incoming, String product)",
      "void shoppingList(ACLMessage incoming)"
    ],
    "SessionManager": [
      "void Introduction()",
      "void solvedProblem(String problemName)",
      "void Error(String message)",
      "void Info(String message)",
      "void addMilestone(String milestone)"
    ]
  },
  "class": {
    "extern": [
      "Agent",
      "Agent",
      "Agent",
      "Agent",
      "Agent",
      "Agent"
    ],
    "data": [
      
    ],
    "swing": [
      
    ],
    "agents": [
      "LARVAAdminAgent",
      "LARVABaseAgent",
      "LARVAEphemeral"
    ],
    "appboot": [
      
    ],
    "basher": [
      
    ],
    "console": [
      
    ],
    "crypto": [
      
    ],
    "database": [
      
    ],
    "disk": [
      
    ],
    "factoryagent": [
      
    ],
    "geometry": [
      
    ],
    "glossary": [
      
    ],
    "larva": [
      "SessionManager",
      "StoreManager",
      "TeamController",
      "WorldController"
    ],
    "map2D": [
      
    ],
    "messaging": [
      
    ],
    "ontology": [
      
    ],
    "sessions": [
      "Session"
    ],
    "telegram": [
      
    ],
    "tools": [
      
    ],
    "world": [
      "liveBot"
    ]
  },
  "format": {
    "data": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "swing": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "agents": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "appboot": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "basher": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "console": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "crypto": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "database": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "disk": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "factoryagent": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "geometry": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "glossary": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "larva": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "map2D": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "messaging": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "ontology": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "sessions": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "telegram": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "tools": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "world": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "extern": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "gray",
      "color": "black"
    },
    "extends": "[arrowhead=onormal, penwidth=1, color=black]",
    "owns": "[style=dotted,arrowhead=odiamond, penwidth=1,color=blue]"
  }
}