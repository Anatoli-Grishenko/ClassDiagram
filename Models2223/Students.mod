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
        "LARVAFirstAgent": [
          "XUIAgent"
        ]
      },
      {
        "LARVABaseAgent": [
          "LARVAAdminAgent",
          "LARVAFirstAgent"
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
          "Controller",
          "Goku",
          "HWManager",
          "Mario",
          "SonGoanda",
          "TeamController",
          "WorldController"
        ]
      },
      {
        "LARVAAdminAgent": [
          "IdentityManager",
          "LARVAEphemeral",
          "ProblemManager"
        ]
      },
      {
        "OleSensor": [
          "OleBag",
          "OleDiode",
          "OleHud",
          "OleSemiDial",
          "OleSuperMap"
        ]
      }
    ],
    "owns": [
      {
        "TeamController": [
          
        ]
      },
      {
        "OleBag": [
          
        ]
      },
      {
        "LARVAEphemeral": [
          
        ]
      },
      {
        "Map2DColor": [
          
        ]
      },
      {
        "OleHud": [
          "Map2DColor"
        ]
      },
      {
        "ProblemManager": [
          "Session"
        ]
      },
      {
        "LARVABoot": [
          
        ]
      },
      {
        "LARVABaseAgent": [
          
        ]
      },
      {
        "Goku": [
          
        ]
      },
      {
        "SonGoanda": [
          
        ]
      },
      {
        "XUIAgent": [
          "OleDashBoard"
        ]
      },
      {
        "HWManager": [
          
        ]
      },
      {
        "OleSemiDial": [
          
        ]
      },
      {
        "Controller": [
          
        ]
      },
      {
        "Keygen": [
          
        ]
      },
      {
        "IdentityManager": [
          
        ]
      },
      {
        "WorldController": [
          
        ]
      },
      {
        "OleDiode": [
          
        ]
      },
      {
        "LARVAFirstAgent": [
          "Environment"
        ]
      },
      {
        "JADEBoot": [
          
        ]
      },
      {
        "Mario": [
          
        ]
      },
      {
        "OleSuperMap": [
          "Environment",
          "Map2DColor"
        ]
      },
      {
        "LARVAAdminAgent": [
          "Session"
        ]
      },
      {
        "OleSensor": [
          
        ]
      },
      {
        "Environment": [
          "liveBot"
        ]
      },
      {
        "liveBot": [
          
        ]
      },
      {
        "OleRemote": [
          
        ]
      },
      {
        "OleDashBoard": [
          "OleSensor",
          "Environment",
          "OleSemiDial",
          "OleDiode",
          "OleBag",
          "OleSuperMap",
          "OleHud"
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
          "Map2DColor",
          "liveBot"
        ]
      }
    ]
  },
  "class": {
    "extern": [
      "Agent",
      "Agent",
      "Environment",
      "Agent",
      "Environment"
    ],
    "data": [
      
    ],
    "swing": [
      "OleDashBoard",
      "OleRemote",
      "OleSensor"
    ],
    "agents": [
      "LARVAAdminAgent",
      "LARVABaseAgent",
      "LARVAEphemeral",
      "LARVAFirstAgent",
      "XUIAgent"
    ],
    "appboot": [
      "JADEBoot",
      "LARVABoot"
    ],
    "basher": [
      
    ],
    "console": [
      
    ],
    "crypto": [
      "Keygen"
    ],
    "database": [
      
    ],
    "disk": [
      
    ],
    "factoryagent": [
      
    ],
    "geometry": [
      "OleBag",
      "OleDiode",
      "OleHud",
      "OleSemiDial",
      "OleSuperMap"
    ],
    "glossary": [
      
    ],
    "larva": [
      "Controller",
      "Goku",
      "HWManager",
      "IdentityManager",
      "Mario",
      "ProblemManager",
      "SessionManager",
      "SonGoanda",
      "StoreManager",
      "TeamController",
      "WorldController"
    ],
    "map2D": [
      "Map2DColor"
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
      "fontsize": 5,
      "fillcolor": "white",
      "color": "black"
    },
    "swing": {
      "face": "Arial",
      "fontsize": 5,
      "fillcolor": "white",
      "color": "black"
    },
    "agents": {
      "face": "Arial",
      "fontsize": 5,
      "fillcolor": "white",
      "color": "black"
    },
    "appboot": {
      "face": "Arial",
      "fontsize": 5,
      "fillcolor": "white",
      "color": "black"
    },
    "basher": {
      "face": "Arial",
      "fontsize": 5,
      "fillcolor": "white",
      "color": "black"
    },
    "console": {
      "face": "Arial",
      "fontsize": 5,
      "fillcolor": "white",
      "color": "black"
    },
    "crypto": {
      "face": "Arial",
      "fontsize": 5,
      "fillcolor": "white",
      "color": "black"
    },
    "database": {
      "face": "Arial",
      "fontsize": 5,
      "fillcolor": "white",
      "color": "black"
    },
    "disk": {
      "face": "Arial",
      "fontsize": 5,
      "fillcolor": "white",
      "color": "black"
    },
    "factoryagent": {
      "face": "Arial",
      "fontsize": 5,
      "fillcolor": "white",
      "color": "black"
    },
    "geometry": {
      "face": "Arial",
      "fontsize": 5,
      "fillcolor": "white",
      "color": "black"
    },
    "glossary": {
      "face": "Arial",
      "fontsize": 5,
      "fillcolor": "white",
      "color": "black"
    },
    "larva": {
      "face": "Arial",
      "fontsize": 5,
      "fillcolor": "white",
      "color": "black"
    },
    "map2D": {
      "face": "Arial",
      "fontsize": 5,
      "fillcolor": "white",
      "color": "black"
    },
    "messaging": {
      "face": "Arial",
      "fontsize": 5,
      "fillcolor": "white",
      "color": "black"
    },
    "ontology": {
      "face": "Arial",
      "fontsize": 5,
      "fillcolor": "white",
      "color": "black"
    },
    "sessions": {
      "face": "Arial",
      "fontsize": 5,
      "fillcolor": "white",
      "color": "black"
    },
    "telegram": {
      "face": "Arial",
      "fontsize": 5,
      "fillcolor": "white",
      "color": "black"
    },
    "tools": {
      "face": "Arial",
      "fontsize": 5,
      "fillcolor": "white",
      "color": "black"
    },
    "world": {
      "face": "Arial",
      "fontsize": 5,
      "fillcolor": "white",
      "color": "black"
    },
    "extern": {
      "face": "Arial",
      "fontsize": 5,
      "fillcolor": "gray",
      "color": "black"
    },
    "extends": "[arrowhead=onormal, penwidth=1, color=black]",
    "owns": "[style=dotted,arrowhead=odiamond, penwidth=1,color=blue]"
  }
}