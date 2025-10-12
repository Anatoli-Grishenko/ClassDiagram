{
  "classtypes": [
    "agents",
    "crypto",
    "data",
    "database",
    "disk",
    "factoryagent",
    "larva",
    "sessions",
    "telegram",
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
        "LARVABaseTelegram": [
          "LARVAPrivateTelegram",
          "LARVAPublicTelegram"
        ]
      },
      {
        "LARVAFirstAgent": [
          "XUIAgent"
        ]
      },
      {
        "TelegramLongPollingBot": [
          "LARVATelegramBot"
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
          "DataBaser",
          "DrDiagnostic",
          "GMailer",
          "IdentityManager",
          "LARVABaseTelegram",
          "LARVAEphemeral",
          "LARVAQueen",
          "ProblemManager"
        ]
      }
    ],
    "owns": [
      {
        "GMailer": [
          
        ]
      },
      {
        "TeamController": [
          
        ]
      },
      {
        "LARVAEphemeral": [
          
        ]
      },
      {
        "LARVAQueen": [
          
        ]
      },
      {
        "ProblemManager": [
          
        ]
      },
      {
        "DataBaser": [
          
        ]
      },
      {
        "LARVABaseTelegram": [
          
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
        "LARVAPublicTelegram": [
          
        ]
      },
      {
        "LARVAPrivateTelegram": [
          
        ]
      },
      {
        "SonGoanda": [
          
        ]
      },
      {
        "XUIAgent": [
          
        ]
      },
      {
        "HWManager": [
          
        ]
      },
      {
        "DrDiagnostic": [
          
        ]
      },
      {
        "LARVATelegramBot": [
          "LARVAAdminAgent"
        ]
      },
      {
        "Controller": [
          
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
        "LARVAFirstAgent": [
          
        ]
      },
      {
        "Mario": [
          
        ]
      },
      {
        "LARVAAdminAgent": [
          
        ]
      },
      {
        "StoreManager": [
          
        ]
      },
      {
        "DeathStar": [
          
        ]
      },
      {
        "SessionManager": [
          
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
      "Agent",
      "TelegramLongPollingBot",
      "Agent",
      "DeathStar",
      "TelegramLongPollingBot",
      "Agent",
      "DeathStar",
      "TelegramLongPollingBot"
    ],
    "agents": [
      "LARVAAdminAgent",
      "LARVABaseAgent",
      "LARVABaseTelegram",
      "LARVAEphemeral",
      "LARVAFirstAgent",
      "XUIAgent"
    ],
    "crypto": [
      
    ],
    "data": [
      
    ],
    "database": [
      
    ],
    "disk": [
      
    ],
    "factoryagent": [
      
    ],
    "larva": [
      "Controller",
      "DataBaser",
      "DrDiagnostic",
      "GMailer",
      "Goku",
      "HWManager",
      "IdentityManager",
      "LARVAPrivateTelegram",
      "LARVAPublicTelegram",
      "LARVAQueen",
      "Mario",
      "ProblemManager",
      "SessionManager",
      "SonGoanda",
      "StoreManager",
      "TeamController",
      "WorldController"
    ],
    "sessions": [
      
    ],
    "telegram": [
      "LARVATelegramBot"
    ],
    "world": [
      
    ]
  },
  "format": {
    "agents": {
      "face": "Courier New",
      "fontsize": 6,
      "fillcolor": "white",
      "color": "black"
    },
    "crypto": {
      "face": "Courier New",
      "fontsize": 6,
      "fillcolor": "white",
      "color": "black"
    },
    "data": {
      "face": "Courier New",
      "fontsize": 6,
      "fillcolor": "white",
      "color": "black"
    },
    "database": {
      "face": "Courier New",
      "fontsize": 6,
      "fillcolor": "white",
      "color": "black"
    },
    "disk": {
      "face": "Courier New",
      "fontsize": 6,
      "fillcolor": "white",
      "color": "black"
    },
    "factoryagent": {
      "face": "Courier New",
      "fontsize": 6,
      "fillcolor": "white",
      "color": "black"
    },
    "larva": {
      "face": "Courier New",
      "fontsize": 6,
      "fillcolor": "white",
      "color": "black"
    },
    "sessions": {
      "face": "Courier New",
      "fontsize": 6,
      "fillcolor": "white",
      "color": "black"
    },
    "telegram": {
      "face": "Courier New",
      "fontsize": 6,
      "fillcolor": "white",
      "color": "black"
    },
    "world": {
      "face": "Courier New",
      "fontsize": 6,
      "fillcolor": "white",
      "color": "black"
    },
    "extern": {
      "face": "Courier New",
      "fontsize": 6,
      "fillcolor": "gray",
      "color": "black"
    },
    "extends": "[arrowhead=onormal, penwidth=1, color=black]",
    "owns": "[style=dotted,arrowhead=odiamond, penwidth=1,color=blue]"
  }
}