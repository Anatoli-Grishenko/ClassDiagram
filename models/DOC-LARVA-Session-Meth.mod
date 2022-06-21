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
          "LARVAAdminAgent"
        ]
      },
      {
        "LARVAEphemeral": [
          "SessionManager",
          "StoreManager"
        ]
      },
      {
        "Agent": [
          "LARVABaseAgent"
        ]
      },
      {
        "SessionManager": [
          "TeamController",
          "WorldController"
        ]
      },
      {
        "LARVAAdminAgent": [
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
    "Session": [
      "Session(DBA2122 db)",
      "String open()",
      "void close()",
      "final Session clear()",
      "boolean isEmpty()",
      "Ole toOle()",
      "Session fromOle(Ole o)",
      "Session setOwner(String agentName)",
      "Session addGuest(String agentName)",
      "World getWorld()",
      "void setWorld(World world)",
      "Session setContext(String problemName)",
      "void setDatabase(DBA2122 database)",
      "void setUserID(int userID)",
      "void setProblemID(int problemID)",
      "void setGroupID(int groupID)",
      "void setAssignmentID(int assignmentID)",
      "void setAgentID(int agentID)",
      "void setIsIndividual(boolean isIndividual)",
      "void setUserName(String userName)",
      "void setAgentName(String agentName)",
      "void setProblemName(String problemName)",
      "void setGroupName(String groupName)",
      "void setSessionID(String sessionID)",
      "void setAssignmentName(String assignmentName)",
      "void setControllerName(String controllerName)",
      "void setProblemMilestones(OleSet problemMilestones)",
      "void setSessionMilestones(OleSet sessionMilestones)",
      "void setLastAction(String lastAction)",
      "void setSessionLogger(Logger sessionLogger)",
      "DBA2122 getDatabase()",
      "int getUserID()",
      "int getProblemID()",
      "int getGroupID()",
      "int getAssignmentID()",
      "int getAgentID()",
      "boolean getIsIndividual()",
      "String getUserName()",
      "String getAgentName()",
      "String getProblemName()",
      "String getGroupName()",
      "String getSessionID()",
      "String getAssignmentName()",
      "String getControllerName()",
      "OleSet getProblemMilestones()",
      "OleSet getSessionMilestones()",
      "String getLastAction()",
      "Logger getSessionLogger()",
      "ArrayList<Integer> getFellowsID()",
      "String getContainerName()",
      "void setContainerName(String containerName)",
      "OleSet getSessionMilestonesMissing()",
      "void setSessionMilestonesMissing(OleSet sessionMilestonesMissing)",
      "OleSet getAchievedMilestones()",
      "void setAchievedMilestones(OleSet achievedMilestones)",
      "Map2DColor getMap()",
      "void setMap(Map2DColor map)",
      "liveBot registerAgent(String name, Roles rol, int basex, int basey, OleSet attachments)",
      "liveBot findAgent(String name)",
      "void addTrace(String record)",
      "boolean execAgent(liveBot agent, String action)",
      "void checkStatus(liveBot agent)",
      "String isGoal(liveBot agent)",
      "JsonObject getGoals()",
      "JsonObject readPerceptions(liveBot agent)",
      "JsonObject getPerceptions(liveBot agent)",
      "int getNumPayload()",
      "int getNumSteps()",
      "int getEnergyBurnt()",
      "boolean hasDistances()",
      "int getElapsedTime()",
      "String getOpenDate()",
      "void setOpenDate(String sthOpen)",
      "int getMaxVisibility(Roles rol)",
      "int getRange(Roles rol)",
      "int getMaxLevel(Roles r)",
      "double getBurnRate(Roles rol)",
      "int getWidth()",
      "void setWidth(int width)",
      "int getHeight()",
      "void setHeight(int height)",
      "int getMaxflight()",
      "void setMaxflight(int maxflight)",
      "boolean isSolved()",
      "String getSessionAlias()",
      "void setSessionAlias(String sessionAlias)"
    ]
  },
  "protectedmethods": {
    "Session": [
      "int getSensorRange(glossary.sensors name)",
      "int getBurnRatio(glossary.sensors name)"
    ]
  },
  "class": {
    "extern": [
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