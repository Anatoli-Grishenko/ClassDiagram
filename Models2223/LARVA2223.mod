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
    "Environment",
    "ai",
    "extern"
  ],
  "relationtypes": [
    "extends",
    "owns"
  ],
  "relation": {
    "extends": [
      {
        "OleDataBase": [
          "DBA2021",
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
          "MyDrawPane",
          "OleDrawPane",
          "OleFoldableList",
          "OleFoldablePane",
          "OleToolBar"
        ]
      },
      {
        "ArrayList<Choice>": [
          "DecisionSet",
          "Plan"
        ]
      },
      {
        "OleFrame": [
          "OleApplication"
        ]
      },
      {
        "MyDrawPane": [
          "AirTrafficControl",
          "MyMapPalPane"
        ]
      },
      {
        "LARVAFirstAgent": [
          "TradeFederation",
          "XUIAgent"
        ]
      },
      {
        "JButton": [
          "MyPlainButton",
          "OleButton"
        ]
      },
      {
        "JsonObject": [
          "Ole"
        ]
      },
      {
        "Ole": [
          "OleConfig",
          "OleDot",
          "OleFile",
          "OlePassport",
          "OleQuery",
          "OleReport",
          "OleRoad",
          "OleRoadMap",
          "OleSet",
          "OleTable"
        ]
      },
      {
        "Decisor": [
          "Functional",
          "Subsumption"
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
        "OlePassport": [
          "AdminPassport"
        ]
      },
      {
        "JFrame": [
          "LARVAFrame",
          "OleFrame"
        ]
      },
      {
        "Vector3D": [
          "SimpleVector3D"
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
        "Search": [
          "AStar",
          "Greedy"
        ]
      },
      {
        "Thing": [
          "liveBot"
        ]
      },
      {
        "JScrollPane": [
          "Ole3DPane",
          "OleScrollPane"
        ]
      },
      {
        "Agent": [
          "LARVABaseAgent"
        ]
      },
      {
        "Behaviour": [
          "CourseFinderBehaviour"
        ]
      },
      {
        "SensorDecoder": [
          "Environment"
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
        "JComponent": [
          "OleSensor"
        ]
      },
      {
        "OleDrawPane": [
          "OleDashBoard"
        ]
      },
      {
        "JLabel": [
          "OlePerformeter"
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
        "OleFoldablePane\nclass": [
          "OleAgentTile"
        ]
      },
      {
        "OleApplication": [
          "Ole3DApplication"
        ]
      },
      {
        "OleSensor": [
          "OleBag",
          "OleDiode",
          "OleHud",
          "OleLabels",
          "OleLinear",
          "OleMap",
          "OleRotatory",
          "OleRoundPB",
          "OleSemiDial",
          "OleSuperMap"
        ]
      },
      {
        "ACLMessage": [
          "ADMINMessage"
        ]
      },
      {
        "Entity3D": [
          "Circle3D",
          "Line3D",
          "Polygon3D",
          "String3D",
          "Thing"
        ]
      },
      {
        "JDialog": [
          "LARVADialog",
          "OleDialog",
          "OleRemote"
        ]
      },
      {
        "JList": [
          "OleList"
        ]
      },
      {
        "JMenuBar": [
          "OleMenuBar"
        ]
      }
    ],
    "owns": [
      {
        "OleLabels": [
          "OleDrawPane"
        ]
      },
      {
        "OleQuery": [
          
        ]
      },
      {
        "GameLabel": [
          
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
        "OleBag": [
          "OleDrawPane"
        ]
      },
      {
        "MyPopup": [
          
        ]
      },
      {
        "Vector3D": [
          "Point3D"
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
        "AgentReport": [
          "TimeHandler"
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
        "Thing": [
          "World",
          "Map2DColor",
          "Point3D",
          "Perceptor",
          "SensorDecoder"
        ]
      },
      {
        "LARVAQueen": [
          "FactoryAgent"
        ]
      },
      {
        "OleHud": [
          "SimpleVector3D",
          "Point3D",
          "TextFactory",
          "AngleTransporter",
          "SensorDecoder",
          "Map2DColor",
          "OleDrawPane"
        ]
      },
      {
        "Roles": [
          
        ]
      },
      {
        "LARVADash": [
          
        ]
      },
      {
        "Compass": [
          
        ]
      },
      {
        "Line3D": [
          "Point3D"
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
        "Functional": [
          "Choice",
          "Environment"
        ]
      },
      {
        "PolarSurface": [
          "SimpleVector3D"
        ]
      },
      {
        "OleMenuBar": [
          "OleFrame",
          "OleConfig"
        ]
      },
      {
        "Game": [
          
        ]
      },
      {
        "MyMapPalPane": [
          "Map2DColor",
          "MyDrawPane",
          "Palette",
          "MyPopup",
          "Point3D"
        ]
      },
      {
        "ProblemManager": [
          "OleConfig",
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
        "Entity3D": [
          
        ]
      },
      {
        "TimeHandler": [
          
        ]
      },
      {
        "Rule": [
          
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
        "OleFrame": [
          
        ]
      },
      {
        "OleIconSet": [
          
        ]
      },
      {
        "OleRoad": [
          
        ]
      },
      {
        "MyDrawPane": [
          
        ]
      },
      {
        "Decisor": [
          
        ]
      },
      {
        "LARVABoot": [
          "OleAgentTile",
          "Logger",
          "OleApplication",
          "OleConfig",
          "OlePassport",
          "OleFoldableList"
        ]
      },
      {
        "Logger": [
          
        ]
      },
      {
        "XUIAgentOldDash": [
          
        ]
      },
      {
        "GamePanel": [
          
        ]
      },
      {
        "LARVABaseAgent": [
          "OleFile",
          "Logger"
        ]
      },
      {
        "capability": [
          
        ]
      },
      {
        "Goku": [
          
        ]
      },
      {
        "LARVAAirTrafficControlTiles": [
          
        ]
      },
      {
        "LARVAPayload": [
          "OleApplication",
          "OleConfig",
          "OlePassport",
          "AgentReport"
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
        "XUIAgent": [
          "OleDashBoard"
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
        "TradeFederation": [
          "LARVAFrame"
        ]
      },
      {
        "Ole3DPane": [
          "OleDrawPane",
          "Scene3D"
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
        "Greedy": [
          "Map2DColor"
        ]
      },
      {
        "emojis": [
          "OleSet"
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
        "ThingSet": [
          "ThingIndex",
          "Ontology"
        ]
      },
      {
        "Map2DGrayscale": [
          
        ]
      },
      {
        "OleTable": [
          
        ]
      },
      {
        "DrDiagnostic": [
          "OleConfig",
          "TimeHandler"
        ]
      },
      {
        "OleButton": [
          
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
        "OleSemiDial": [
          "OleDrawPane"
        ]
      },
      {
        "Controller": [
          "Ole"
        ]
      },
      {
        "Plan": [
          
        ]
      },
      {
        "AStarBehavioural": [
          "Plan",
          "DecisionSet",
          "Choice",
          "Map2DColor"
        ]
      },
      {
        "Keygen": [
          
        ]
      },
      {
        "DBA2021": [
          "Ole",
          "OleTable"
        ]
      },
      {
        "fileutils": [
          
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
        "Ole3DApplication": [
          
        ]
      },
      {
        "Transform": [
          
        ]
      },
      {
        "GameBitmap": [
          
        ]
      },
      {
        "OleAgentTile": [
          "OleApplication",
          "OleButton",
          "AgentReport",
          "OlePerformeter",
          "OleToolBar"
        ]
      },
      {
        "DeathStarDeLuxe": [
          
        ]
      },
      {
        "LARVAEmbeddedDash": [
          
        ]
      },
      {
        "OleDialog": [
          "OleConfig"
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
        "Choice": [
          "Point3D",
          "DecisionSet"
        ]
      },
      {
        "LARVAMiniDash": [
          
        ]
      },
      {
        "OleDiode": [
          "OleDrawPane"
        ]
      },
      {
        "LARVAFirstAgent": [
          "OleApplication",
          "SensorDecoder",
          "SequenceDiagram",
          "OleSet",
          "OleConfig",
          "AgentReport",
          "LARVAPayload",
          "Environment",
          "DecisionSet",
          "OleAgentTile",
          "OleToolBar",
          "OleButton"
        ]
      },
      {
        "AStar": [
          "Map2DColor"
        ]
      },
      {
        "Scene3D": [
          "Entity3D"
        ]
      },
      {
        "JADEBoot": [
          "OleConfig",
          "Logger"
        ]
      },
      {
        "Polygon3D": [
          "Point3D"
        ]
      },
      {
        "World": [
          "Thing",
          "ThingSet",
          "Ontology",
          "OleConfig",
          "Point3D"
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
        "ThingIndex": [
          "Thing"
        ]
      },
      {
        "AdminPassport": [
          
        ]
      },
      {
        "OleToolBar": [
          "OleFrame",
          "OleApplication"
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
        "Subsumption": [
          "RuleBaseSystem",
          "DecisionSet",
          "Choice",
          "Environment"
        ]
      },
      {
        "TelegramMenuBar": [
          "TelegramMenuOption",
          "TelegramMenu"
        ]
      },
      {
        "GameObject": [
          
        ]
      },
      {
        "OleRotatory": [
          "OleDrawPane"
        ]
      },
      {
        "Search": [
          "DecisionSet",
          "TimeHandler",
          "Choice",
          "Map2DColor",
          "OleApplication"
        ]
      },
      {
        "GameCharacter": [
          
        ]
      },
      {
        "Sensors": [
          
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
        "OleFoldableList": [
          
        ]
      },
      {
        "OleScrollPane": [
          "OleDrawPane"
        ]
      },
      {
        "LARVA": [
          
        ]
      },
      {
        "OleSuperMap": [
          "SimpleVector3D",
          "Point3D",
          "TextFactory",
          "AngleTransporter",
          "Environment",
          "Map2DColor",
          "OleConfig",
          "OleDrawPane"
        ]
      },
      {
        "OlePerformeter": [
          "Map2DColor"
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
          "OleConfig",
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
        "DecisionSet": [
          "Choice"
        ]
      },
      {
        "SimpleVector3D": [
          "Point3D"
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
        "Point3D": [
          
        ]
      },
      {
        "Environment": [
          "World",
          "liveBot",
          "ThingSet"
        ]
      },
      {
        "TextFactory": [
          
        ]
      },
      {
        "String3D": [
          
        ]
      },
      {
        "Internet": [
          
        ]
      },
      {
        "EnvironmentOld": [
          "SensorDecoder",
          "World",
          "liveBot",
          "Point3D",
          "SimpleVector3D"
        ]
      },
      {
        "LARVAAirTrafficControl3D": [
          
        ]
      },
      {
        "NPC": [
          
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
          "Point3D"
        ]
      },
      {
        "Palette": [
          
        ]
      },
      {
        "request": [
          
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
        "CourseFinderBehaviour": [
          "Plan",
          "DecisionSet",
          "Choice",
          "Point3D"
        ]
      },
      {
        "TracePositions": [
          "Point3D"
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
        "OleRemote": [
          "OleButton",
          "OleApplication",
          "OleToolBar"
        ]
      },
      {
        "OleDashBoard": [
          "OleSensor",
          "Environment",
          "OleSemiDial",
          "OleRotatory",
          "OleDiode",
          "OleLinear",
          "OleBag",
          "OleSuperMap",
          "OleHud",
          "OleLabels",
          "Palette",
          "TimeHandler"
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
        "OleDot": [
          
        ]
      },
      {
        "StoreManager": [
          
        ]
      },
      {
        "Pathfinder": [
          
        ]
      },
      {
        "OleLinear": [
          "OleDrawPane"
        ]
      },
      {
        "DeathStar": [
          
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
        "AngleTransporter": [
          "Point3D"
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
        "OleMap": [
          "SimpleVector3D",
          "Point3D",
          "TextFactory",
          "AngleTransporter",
          "Environment",
          "Map2DColor",
          "OleDrawPane"
        ]
      },
      {
        "LARVADialog": [
          
        ]
      },
      {
        "direction": [
          
        ]
      },
      {
        "SwingTools": [
          
        ]
      },
      {
        "SensorDecoder": [
          "Map2DColor",
          "SimpleVector3D"
        ]
      },
      {
        "Sprite": [
          
        ]
      },
      {
        "SessionManager": [
          
        ]
      },
      {
        "OleDrawPane": [
          
        ]
      },
      {
        "Circle3D": [
          "Point3D"
        ]
      },
      {
        "OleFoldablePane": [
          "OleButton",
          "OleFoldableList"
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
        "RuleBaseSystem": [
          "Rule"
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
        "OleApplication": [
          
        ]
      },
      {
        "Map2DColor_OLD": [
          
        ]
      },
      {
        "OleRoundPB": [
          "OleDrawPane"
        ]
      },
      {
        "Perceptor": [
          "Thing"
        ]
      },
      {
        "GameScene": [
          
        ]
      },
      {
        "OleRoadMap": [
          
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
        "OleConfig": [
          
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
    "extern": [
      "ACLMessage",
      "Behaviour",
      "ArrayList<Choice>",
      "JPanel",
      "Agent",
      "JDialog",
      "JFrame",
      "TelegramLongPollingBot",
      "JPanel",
      "JButton",
      "JPopupMenu",
      "JsonObject",
      "JScrollPane",
      "OleFoldablePane\nclass",
      "JButton",
      "JDialog",
      "JPanel",
      "JPanel",
      "JPanel",
      "JFrame",
      "JList",
      "JMenuBar",
      "JLabel",
      "JDialog",
      "JScrollPane",
      "JComponent",
      "JPanel",
      "ArrayList<Choice>",
      "ACLMessage",
      "Agent",
      "Behaviour",
      "DBAAPI",
      "Event",
      "Game",
      "JButton",
      "JComponent",
      "JDialog",
      "JFrame",
      "JLabel",
      "JList",
      "JMenuBar",
      "JPanel",
      "JPopupMenu",
      "JScrollPane",
      "JsonObject",
      "NPC",
      "OleFoldablePane\nclass",
      "Pathfinder",
      "Sprite",
      "TelegramLongPollingBot",
      "XUIAgentOldDash",
      "ArrayList<Choice>",
      "DeathStar",
      "DeathStarDeLuxe",
      "GameBitmap",
      "GameCharacter",
      "GameLabel",
      "GameObject",
      "GamePanel",
      "GameScene",
      "LARVAAirTrafficControl3D",
      "LARVAAirTrafficControlTiles",
      "LARVACompactDash",
      "LARVADash",
      "LARVAEmbeddedDash",
      "LARVAMiniDash"
    ],
    "data": [
      "AdminPassport",
      "Ole",
      "OleConfig",
      "OleDot",
      "OleFile",
      "OlePassport",
      "OleQuery",
      "OleReport",
      "OleSet",
      "OleTable",
      "TokenList",
      "Transform"
    ],
    "swing": [
      "AirTrafficControl",
      "Angular",
      "JDrawPane",
      "LARVADialog",
      "LARVAFrame",
      "MyDrawPane",
      "MyMapPalPane",
      "MyPlainButton",
      "MyPopup",
      "Ole3DApplication",
      "Ole3DPane",
      "OleAgentTile",
      "OleApplication",
      "OleButton",
      "OleDashBoard",
      "OleDialog",
      "OleDrawPane",
      "OleFoldableList",
      "OleFoldablePane",
      "OleFrame",
      "OleIconSet",
      "OleList",
      "OleMenuBar",
      "OlePerformeter",
      "OleRemote",
      "OleScrollPane",
      "OleSensor",
      "OleToolBar",
      "RoundProgressBar",
      "SwingTools",
      "TextFactory"
    ],
    "agents": [
      "ADMINMessage",
      "AgentReport",
      "BehaviourControl",
      "LARVAAdminAgent",
      "LARVABaseAgent",
      "LARVABaseTelegram",
      "LARVAEphemeral",
      "LARVAFirstAgent",
      "LARVAPayload",
      "TradeFederation",
      "XUIAgent"
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
    "database": [
      "DBA2021",
      "DBA2122",
      "DBAgent",
      "OleDataBase",
      "SentenceBuilder"
    ],
    "disk": [
      "Logger",
      "fileutils"
    ],
    "factoryagent": [
      "FactoryAgent"
    ],
    "geometry": [
      "AngleTransporter",
      "Circle3D",
      "Compass",
      "Entity3D",
      "Line3D",
      "OleBag",
      "OleDiode",
      "OleHud",
      "OleLabels",
      "OleLinear",
      "OleMap",
      "OleRotatory",
      "OleRoundPB",
      "OleSemiDial",
      "OleSuperMap",
      "Point3D",
      "PolarSurface",
      "Polygon3D",
      "Scene3D",
      "SimpleVector3D",
      "String3D",
      "Vector3D"
    ],
    "glossary": [
      "Roles",
      "Sensors",
      "capability",
      "direction",
      "request"
    ],
    "larva": [
      "Controller",
      "CourseFinderBehaviour",
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
      "Map2DColor_OLD",
      "Map2DGrayscale",
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
      "TimeHandler",
      "emojis"
    ],
    "world": [
      "OleRoad",
      "OleRoadMap",
      "Perceptor",
      "SensorDecoder",
      "Thing",
      "ThingIndex",
      "ThingSet",
      "World",
      "liveBot"
    ],
    "Environment": [
      "Environment",
      "EnvironmentOld"
    ],
    "ai": [
      "AStar",
      "AStarBehavioural",
      "Choice",
      "DecisionSet",
      "Decisor",
      "Functional",
      "Greedy",
      "Plan",
      "Rule",
      "RuleBaseSystem",
      "Search",
      "Subsumption",
      "TracePositions"
    ]
  },
  "format": {
    "data": {
      "face": "Courier New",
      "fontsize": 4,
      "fillcolor": "Chartreuse",
      "color": "black"
    },
    "swing": {
      "face": "Courier New",
      "fontsize": 4,
      "fillcolor": "MediumSpringGreen",
      "color": "black"
    },
    "agents": {
      "face": "Courier New",
      "fontsize": 4,
      "fillcolor": "Turquoise",
      "color": "black"
    },
    "appboot": {
      "face": "Courier New",
      "fontsize": 4,
      "fillcolor": "CadetBlue",
      "color": "black"
    },
    "basher": {
      "face": "Courier New",
      "fontsize": 4,
      "fillcolor": "MediumAquaMarine",
      "color": "black"
    },
    "console": {
      "face": "Courier New",
      "fontsize": 4,
      "fillcolor": "Thistle",
      "color": "black"
    },
    "crypto": {
      "face": "Courier New",
      "fontsize": 4,
      "fillcolor": "LightSteelBlue",
      "color": "black"
    },
    "database": {
      "face": "Courier New",
      "fontsize": 4,
      "fillcolor": "DarkViolet",
      "color": "black"
    },
    "disk": {
      "face": "Courier New",
      "fontsize": 4,
      "fillcolor": "BlueViolet",
      "color": "black"
    },
    "factoryagent": {
      "face": "Courier New",
      "fontsize": 4,
      "fillcolor": "DarkOliveGreen",
      "color": "black"
    },
    "geometry": {
      "face": "Courier New",
      "fontsize": 4,
      "fillcolor": "Aqua",
      "color": "black"
    },
    "glossary": {
      "face": "Courier New",
      "fontsize": 4,
      "fillcolor": "OliveDrab",
      "color": "black"
    },
    "larva": {
      "face": "Courier New",
      "fontsize": 4,
      "fillcolor": "Cyan",
      "color": "black"
    },
    "map2D": {
      "face": "Courier New",
      "fontsize": 4,
      "fillcolor": "LightBlue",
      "color": "black"
    },
    "messaging": {
      "face": "Courier New",
      "fontsize": 4,
      "fillcolor": "Indigo",
      "color": "black"
    },
    "ontology": {
      "face": "Courier New",
      "fontsize": 4,
      "fillcolor": "DarkSeaGreen",
      "color": "black"
    },
    "sessions": {
      "face": "Courier New",
      "fontsize": 4,
      "fillcolor": "Crimson",
      "color": "black"
    },
    "telegram": {
      "face": "Courier New",
      "fontsize": 4,
      "fillcolor": "Orchid",
      "color": "black"
    },
    "tools": {
      "face": "Courier New",
      "fontsize": 4,
      "fillcolor": "DarkGreen",
      "color": "black"
    },
    "world": {
      "face": "Courier New",
      "fontsize": 4,
      "fillcolor": "Salmon",
      "color": "black"
    },
    "Environment": {
      "face": "Courier New",
      "fontsize": 4,
      "fillcolor": "RebeccaPurple",
      "color": "black"
    },
    "ai": {
      "face": "Courier New",
      "fontsize": 4,
      "fillcolor": "MediumSlateBlue",
      "color": "black"
    },
    "extern": {
      "face": "Courier New",
      "fontsize": 4,
      "fillcolor": "gray",
      "color": "black"
    },
    "extends": "[arrowhead=onormal, penwidth=1, color=black]",
    "owns": "[style=dotted,arrowhead=odiamond, penwidth=1,color=blue]"
  }
}