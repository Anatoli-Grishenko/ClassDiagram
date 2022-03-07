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
        "LARVABaseTelegram": [
          "LARVAPrivateTelegram",
          "LARVAPublicTelegram"
        ]
      },
      {
        "LARVAFirstAgent": [
          "DeathStar"
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
  "class": {
    "extern": [
      "Agent",
      "TelegramLongPollingBot",
      "Agent",
      "Agent",
      "TelegramLongPollingBot",
      "Agent",
      "TelegramLongPollingBot",
      "Agent",
      "TelegramLongPollingBot",
      "Agent",
      "TelegramLongPollingBot",
      "Agent",
      "TelegramLongPollingBot"
    ],
    "data": [
      
    ],
    "swing": [
      
    ],
    "agents": [
      "DeathStar",
      "LARVAAdminAgent",
      "LARVABaseAgent",
      "LARVABaseTelegram",
      "LARVAEphemeral",
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
    "map2D": [
      
    ],
    "messaging": [
      
    ],
    "ontology": [
      
    ],
    "sessions": [
      
    ],
    "telegram": [
      "LARVATelegramBot"
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