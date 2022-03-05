{
  "classtypes": [
    "swing",
    "agents",
    "appboot",
    "basher",
    "console",
    "crypto",
    "data",
    "database",
    "disk",
    "geometry",
    "glossary",
    "larva",
    "map2D",
    "messaging",
    "ontology",
    "sessions",
    "telegram",
    "tools",
    "world"
  ],
  "relationtypes": [
    "extends",
    "owns"
  ],
  "relation": {
    "extends": [
      {
        "OleDataBase": [
          "DBA2122"
        ]
      },
      {
        "LARVABaseTelegram": [
          "LARVAPrivateTelegram",
          "LARVAPublicTelegram"
        ]
      },
      {
        "JPanel": [
          "JDrawPane",
          "MyDrawPane"
        ]
      },
      {
        "Entity": [
          "Thing"
        ]
      },
      {
        "MyDrawPane": [
          "AirTrafficControl",
          "LARVAEmbeddedDash",
          "MyMapPalPane"
        ]
      },
      {
        "LARVAFirstAgent": [
          "DeathStar"
        ]
      },
      {
        "JButton": [
          "MyPlainButton"
        ]
      },
      {
        "JsonObject": [
          "Ole"
        ]
      },
      {
        "Ole": [
          "OleFile",
          "OlePassport",
          "OleQuery",
          "OleReport",
          "OleSensor",
          "OleSet",
          "OleTable"
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
        "JFrame": [
          "LARVAFrame"
        ]
      },
      {
        "OlePassport": [
          "AdminPassport"
        ]
      },
      {
        "Cryptor": [
          "AdminCryptor"
        ]
      },
      {
        "LARVAEphemeral": [
          "SessionManager",
          "StoreManager"
        ]
      },
      {
        "Thing": [
          "liveBot"
        ]
      },
      {
        "JScrollPane": [
          
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
        "LARVADash": [
          "LARVACompactDash",
          "LARVAMiniDash"
        ]
      },
      {
        "LARVAAdminAgent": [
          "DataBaser",
          "DrDiagnostic",
          "EmptyAgent",
          "GMailer",
          "IdentityManager",
          "LARVABaseTelegram",
          "LARVAEphemeral",
          "LARVAQueen",
          "ProblemManager"
        ]
      },
      {
        "JPopupMenu": [
          "MyPopup"
        ]
      },
      {
        "Keygen": [
          
        ]
      },
      {
        "ACLMessage": [
          "ADMINMessage"
        ]
      },
      {
        "JDialog": [
          "LARVADialog"
        ]
      },
      {
        "JList": [
          "OleList"
        ]
      },
      {
        "JMenuBar": [
          
        ]
      }
    ],
    "owns": [
      {
        "Entity": [
          
        ]
      },
      {
        "OleQuery": [
          
        ]
      },
      {
        "Ole": [
          "Cryptor"
        ]
      },
      {
        "GMailer": [
          "SendGMailSMTP"
        ]
      },
      {
        "TeamController": [
          "Ole"
        ]
      },
      {
        "MyPopup": [
          
        ]
      },
      {
        "Cryptor": [
          
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
        "SentenceBuilder": [
          "OleDataBase"
        ]
      },
      {
        "Vector": [
          "Point"
        ]
      },
      {
        "Thing": [
          "World",
          "Map2DColor",
          "Perceptor"
        ]
      },
      {
        "LARVAQueen": [
          "FactoryAgent"
        ]
      },
      {
        "LARVADash": [
          "LARVAFrame",
          "MyDrawPane",
          "MyPlainButton",
          "MyMapPalPane",
          "Map2DColor",
          "RoundProgressBar",
          "Angular",
          "SensorDecoder",
          "TimeHandler",
          "Palette"
        ]
      },
      {
        "Compass": [
          
        ]
      },
      {
        "SequenceDiagram": [
          
        ]
      },
      {
        "FactoryAgent": [
          "LARVAAdminAgent"
        ]
      },
      {
        "MyMapPalPane": [
          "Map2DColor",
          "MyDrawPane",
          "Palette",
          "MyPopup",
          "Point"
        ]
      },
      {
        "ProblemManager": [
          "Session"
        ]
      },
      {
        "TelegramMenuOption": [
          "TelegramMenu",
          "TelegramChoice"
        ]
      },
      {
        "TimeHandler": [
          
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
        "MyDrawPane": [
          
        ]
      },
      {
        "LARVABoot": [
          "Logger",
          "LARVAFrame"
        ]
      },
      {
        "Logger": [
          
        ]
      },
      {
        "LARVABaseAgent": [
          "OleFile",
          "Logger"
        ]
      },
      {
        "Goku": [
          
        ]
      },
      {
        "LARVAAirTrafficControlTiles": [
          "LARVAFrame",
          "MyDrawPane",
          "AirTrafficControl",
          "SensorDecoder",
          "TimeHandler",
          "Palette",
          "LARVAEmbeddedDash",
          "OleFile"
        ]
      },
      {
        "LARVAPublicTelegram": [
          "TelegramChat"
        ]
      },
      {
        "LARVAPrivateTelegram": [
          "TelegramChat"
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
        "Menu": [
          "Console"
        ]
      },
      {
        "TelegramChat": [
          
        ]
      },
      {
        "DBAAPI": [
          
        ]
      },
      {
        "JDrawPane": [
          
        ]
      },
      {
        "MyPlainButton": [
          "LARVAFrame"
        ]
      },
      {
        "OleTable": [
          
        ]
      },
      {
        "DrDiagnostic": [
          "TimeHandler"
        ]
      },
      {
        "LARVATelegramBot": [
          "TelegramUpdates",
          "LARVAAdminAgent"
        ]
      },
      {
        "TelegramChoice": [
          
        ]
      },
      {
        "TelegramMenu": [
          
        ]
      },
      {
        "Keygen": [
          
        ]
      },
      {
        "Event": [
          
        ]
      },
      {
        "LARVACompactDash": [
          
        ]
      },
      {
        "LARVAEmbeddedDash": [
          "SensorDecoder",
          "RoundProgressBar",
          "Angular",
          "TimeHandler",
          "MyDrawPane"
        ]
      },
      {
        "IdentityManager": [
          
        ]
      },
      {
        "WorldController": [
          "Ole"
        ]
      },
      {
        "LARVAMiniDash": [
          
        ]
      },
      {
        "LARVAFirstAgent": [
          "LARVAFrame",
          "LARVADash",
          "SequenceDiagram",
          "OleSet"
        ]
      },
      {
        "JADEBoot": [
          "Logger"
        ]
      },
      {
        "World": [
          "Thing",
          "Ontology"
        ]
      },
      {
        "Basher": [
          
        ]
      },
      {
        "Mario": [
          
        ]
      },
      {
        "AdminPassport": [
          
        ]
      },
      {
        "AdminCryptor": [
          
        ]
      },
      {
        "ReportableObject": [
          
        ]
      },
      {
        "TelegramMenuBar": [
          "TelegramMenuOption",
          "TelegramMenu"
        ]
      },
      {
        "RoundProgressBar": [
          
        ]
      },
      {
        "Sentence": [
          
        ]
      },
      {
        "LARVA": [
          
        ]
      },
      {
        "DBAgent": [
          
        ]
      },
      {
        "OleFile": [
          
        ]
      },
      {
        "LARVAAdminAgent": [
          "FactoryAgent",
          "DBA2122",
          "BehaviourControl",
          "ReportableObject",
          "AdminCryptor",
          "OleSet",
          "Ole",
          "Session",
          "TimeHandler",
          "Sentence"
        ]
      },
      {
        "DBA2122": [
          "Ole",
          "OleTable",
          "OleSet"
        ]
      },
      {
        "ACLMessageTools": [
          
        ]
      },
      {
        "OleSensor": [
          
        ]
      },
      {
        "Internet": [
          
        ]
      },
      {
        "LARVAAirTrafficControl3D": [
          "LARVAFrame",
          "SensorDecoder",
          "TimeHandler",
          "Palette",
          "LARVAEmbeddedDash",
          "OleFile"
        ]
      },
      {
        "OleDataBase": [
          "Ole",
          "Logger",
          "OleTable",
          "SentenceBuilder"
        ]
      },
      {
        "liveBot": [
          "Point",
          "Thing"
        ]
      },
      {
        "Palette": [
          
        ]
      },
      {
        "Ontology": [
          
        ]
      },
      {
        "LARVAFrame": [
          
        ]
      },
      {
        "TokenList": [
          
        ]
      },
      {
        "TelegramUpdates": [
          "TelegramChat"
        ]
      },
      {
        "OleList": [
          
        ]
      },
      {
        "Angular": [
          
        ]
      },
      {
        "StoreManager": [
          
        ]
      },
      {
        "DeathStar": [
          "LARVAMiniDash",
          "LARVAAirTrafficControlTiles"
        ]
      },
      {
        "OlePassport": [
          
        ]
      },
      {
        "OleSet": [
          
        ]
      },
      {
        "Console": [
          
        ]
      },
      {
        "EmptyAgent": [
          
        ]
      },
      {
        "LARVADialog": [
          
        ]
      },
      {
        "SwingTools": [
          
        ]
      },
      {
        "SensorDecoder": [
          "Map2DColor"
        ]
      },
      {
        "SessionManager": [
          
        ]
      },
      {
        "Point": [
          
        ]
      },
      {
        "ADMINMessage": [
          "LARVAAdminAgent"
        ]
      },
      {
        "BehaviourControl": [
          
        ]
      },
      {
        "SendGMailSMTP": [
          
        ]
      },
      {
        "Map2DPalette": [
          
        ]
      },
      {
        "Perceptor": [
          "Thing"
        ]
      },
      {
        "AirTrafficControl": [
          "Map2DColor",
          "MyDrawPane",
          "Palette",
          "MyPopup"
        ]
      },
      {
        "OleReport": [
          
        ]
      },
      {
        "Session": [
          "DBA2122",
          "OleSet",
          "Logger",
          "World",
          "Map2DColor",
          "Ole",
          "liveBot",
          "SensorDecoder"
        ]
      }
    ]
  },
  "class": {
    "swing": [
      "AirTrafficControl",
      "Angular",
      "JDrawPane",
      "LARVAAirTrafficControl3D",
      "LARVAAirTrafficControlTiles",
      "LARVACompactDash",
      "LARVADash",
      "LARVADialog",
      "LARVAEmbeddedDash",
      "LARVAFrame",
      "LARVAMiniDash",
      "MyDrawPane",
      "MyMapPalPane",
      "MyPlainButton",
      "MyPopup",
      "OleList",
      "RoundProgressBar",
      "SwingTools"
    ],
    "agents": [
      "ADMINMessage",
      "BehaviourControl",
      "DeathStar",
      "LARVAAdminAgent",
      "LARVABaseAgent",
      "LARVABaseTelegram",
      "LARVAEphemeral",
      "LARVAFirstAgent"
    ],
    "appboot": [
      "JADEBoot",
      "LARVABoot"
    ],
    "basher": [
      "Basher"
    ],
    "console": [
      "Console",
      "Menu"
    ],
    "crypto": [
      "AdminCryptor",
      "Cryptor",
      "Keygen"
    ],
    "data": [
      "AdminPassport",
      "Ole",
      "OleFile",
      "OlePassport",
      "OleQuery",
      "OleReport",
      "OleSensor",
      "OleSet",
      "OleTable",
      "TokenList"
    ],
    "database": [
      "DBA2122",
      "DBAgent",
      "OleDataBase",
      "SentenceBuilder"
    ],
    "disk": [
      "Logger"
    ],
    "geometry": [
      "Compass",
      "Entity",
      "Point",
      "Vector"
    ],
    "glossary": [
      
    ],
    "larva": [
      "DataBaser",
      "DrDiagnostic",
      "EmptyAgent",
      "GMailer",
      "Goku",
      "HWManager",
      "IdentityManager",
      "LARVA",
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
      "Map2DColor",
      "Map2DPalette",
      "Palette"
    ],
    "messaging": [
      "ACLMessageTools",
      "Sentence",
      "SequenceDiagram"
    ],
    "ontology": [
      "Ontology"
    ],
    "sessions": [
      "Session"
    ],
    "telegram": [
      "LARVATelegramBot",
      "TelegramChat",
      "TelegramChoice",
      "TelegramMenu",
      "TelegramMenuBar",
      "TelegramMenuOption",
      "TelegramUpdates"
    ],
    "tools": [
      "Internet",
      "ReportableObject",
      "SendGMailSMTP",
      "TimeHandler"
    ],
    "world": [
      "Perceptor",
      "SensorDecoder",
      "Thing",
      "World",
      "liveBot"
    ]
  },
  "format": {
    "swing": {
      "face": "Courier New",
      "fontsize": 36,
      "fillcolor": "white",
      "color": "black"
    },
    "agents": {
      "face": "Courier New",
      "fontsize": 36,
      "fillcolor": "white",
      "color": "black"
    },
    "appboot": {
      "face": "Courier New",
      "fontsize": 36,
      "fillcolor": "white",
      "color": "black"
    },
    "basher": {
      "face": "Courier New",
      "fontsize": 36,
      "fillcolor": "white",
      "color": "black"
    },
    "console": {
      "face": "Courier New",
      "fontsize": 36,
      "fillcolor": "white",
      "color": "black"
    },
    "crypto": {
      "face": "Courier New",
      "fontsize": 36,
      "fillcolor": "white",
      "color": "black"
    },
    "data": {
      "face": "Courier New",
      "fontsize": 36,
      "fillcolor": "white",
      "color": "black"
    },
    "database": {
      "face": "Courier New",
      "fontsize": 36,
      "fillcolor": "white",
      "color": "black"
    },
    "disk": {
      "face": "Courier New",
      "fontsize": 36,
      "fillcolor": "white",
      "color": "black"
    },
    "geometry": {
      "face": "Courier New",
      "fontsize": 36,
      "fillcolor": "white",
      "color": "black"
    },
    "glossary": {
      "face": "Courier New",
      "fontsize": 36,
      "fillcolor": "white",
      "color": "black"
    },
    "larva": {
      "face": "Courier New",
      "fontsize": 36,
      "fillcolor": "white",
      "color": "black"
    },
    "map2D": {
      "face": "Courier New",
      "fontsize": 36,
      "fillcolor": "white",
      "color": "black"
    },
    "messaging": {
      "face": "Courier New",
      "fontsize": 36,
      "fillcolor": "white",
      "color": "black"
    },
    "ontology": {
      "face": "Courier New",
      "fontsize": 36,
      "fillcolor": "white",
      "color": "black"
    },
    "sessions": {
      "face": "Courier New",
      "fontsize": 36,
      "fillcolor": "white",
      "color": "black"
    },
    "telegram": {
      "face": "Courier New",
      "fontsize": 36,
      "fillcolor": "white",
      "color": "black"
    },
    "tools": {
      "face": "Courier New",
      "fontsize": 36,
      "fillcolor": "white",
      "color": "black"
    },
    "world": {
      "face": "Courier New",
      "fontsize": 36,
      "fillcolor": "white",
      "color": "black"
    },
    "extends": "[arrowhead=onormal, penwidth=3, color=black]",
    "owns": "[style=dotted,arrowhead=odiamond, penwidth=3,color=blue]"
  }
}