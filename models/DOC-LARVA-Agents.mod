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
          
        ]
      }
    ],
    "owns": [
      {
        "LARVAFirstAgent": [
          
        ]
      }
    ]
  },
  "publicmethods": {
    "LARVAFirstAgent": [
      "void setup()",
      "void LARVAwait(int milis)",
      "void postExecute()",
      "void preExecute()",
      "void takeDown()",
      "boolean loadMyPassport(String passportFileName)",
      "void setMypassport(String mypassport)",
      "String getMypassport()",
      "ACLMessage LARVAblockingReceive(MessageTemplate t)",
      "void Alert(String message)",
      "void Message(String message)",
      "void doActivateLARVADash()",
      "String getIdentityManager()",
      "void setIdentityManager(String IdentityManager)",
      "ArrayList<String> DFGetProviderList()",
      "ArrayList<String> DFGetServiceList()",
      "ArrayList<String> DFGetAllProvidersOf(String service)",
      "ArrayList<String> DFGetAllServicesProvidedBy(String agentName)",
      "boolean DFHasService(String agentName, String service)",
      "String getSequenceDiagram()",
      "void saveSequenceDiagram(String filename)",
      "void getUserData(String welcome)",
      "void actionPerformed(ActionEvent e)"
    ]
  },
  "class": {
    "extern": [
      
    ],
    "data": [
      
    ],
    "swing": [
      
    ],
    "agents": [
      "LARVAFirstAgent",
      "LARVAFirstAgent"
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
      
    ],
    "map2D": [
      
    ],
    "messaging": [
      
    ],
    "ontology": [
      
    ],
    "sessions": [
      
    ],
    "telegram": [
      
    ],
    "tools": [
      
    ],
    "world": [
      
    ]
  },
  "format": {
    "data": {
      "face": "Arial",
      "fontsize": 6,
      "fillcolor": "Chartreuse",
      "color": "black"
    },
    "swing": {
      "face": "Arial",
      "fontsize": 6,
      "fillcolor": "MediumSpringGreen",
      "color": "black"
    },
    "agents": {
      "face": "Arial",
      "fontsize": 6,
      "fillcolor": "Turquoise",
      "color": "black"
    },
    "appboot": {
      "face": "Arial",
      "fontsize": 6,
      "fillcolor": "CadetBlue",
      "color": "black"
    },
    "basher": {
      "face": "Arial",
      "fontsize": 6,
      "fillcolor": "MediumAquaMarine",
      "color": "black"
    },
    "console": {
      "face": "Arial",
      "fontsize": 6,
      "fillcolor": "Thistle",
      "color": "black"
    },
    "crypto": {
      "face": "Arial",
      "fontsize": 6,
      "fillcolor": "LightSteelBlue",
      "color": "black"
    },
    "database": {
      "face": "Arial",
      "fontsize": 6,
      "fillcolor": "DarkViolet",
      "color": "black"
    },
    "disk": {
      "face": "Arial",
      "fontsize": 6,
      "fillcolor": "BlueViolet",
      "color": "black"
    },
    "factoryagent": {
      "face": "Arial",
      "fontsize": 6,
      "fillcolor": "DarkOliveGreen",
      "color": "black"
    },
    "geometry": {
      "face": "Arial",
      "fontsize": 6,
      "fillcolor": "Aqua",
      "color": "black"
    },
    "glossary": {
      "face": "Arial",
      "fontsize": 6,
      "fillcolor": "OliveDrab",
      "color": "black"
    },
    "larva": {
      "face": "Arial",
      "fontsize": 6,
      "fillcolor": "Cyan",
      "color": "black"
    },
    "map2D": {
      "face": "Arial",
      "fontsize": 6,
      "fillcolor": "LightBlue",
      "color": "black"
    },
    "messaging": {
      "face": "Arial",
      "fontsize": 6,
      "fillcolor": "Indigo",
      "color": "black"
    },
    "ontology": {
      "face": "Arial",
      "fontsize": 6,
      "fillcolor": "DarkSeaGreen",
      "color": "black"
    },
    "sessions": {
      "face": "Arial",
      "fontsize": 6,
      "fillcolor": "Crimson",
      "color": "black"
    },
    "telegram": {
      "face": "Arial",
      "fontsize": 6,
      "fillcolor": "Orchid",
      "color": "black"
    },
    "tools": {
      "face": "Arial",
      "fontsize": 6,
      "fillcolor": "DarkGreen",
      "color": "black"
    },
    "world": {
      "face": "Arial",
      "fontsize": 6,
      "fillcolor": "Salmon",
      "color": "black"
    },
    "extern": {
      "face": "Arial",
      "fontsize": 6,
      "fillcolor": "gray",
      "color": "black"
    },
    "extends": "[arrowhead=onormal, penwidth=1, color=black]",
    "owns": "[style=dotted,arrowhead=odiamond, penwidth=1,color=blue]"
  }
}