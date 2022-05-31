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
  "publicmethods": {
    "LARVABaseAgent": [
      "void setup()",
      "void takeDown()",
      "void Execute()",
      "void preExecute()  }",
      "void postExecute()  }",
      "void doExit()",
      "void doNotExit()",
      "ArrayList<String> DFGetProviderList()",
      "ArrayList<String> DFGetServiceList()",
      "ArrayList<String> DFGetAllProvidersOf(String service)",
      "ArrayList<String> DFGetAllServicesProvidedBy(String agentName)",
      "boolean DFHasService(String agentName, String service)",
      "boolean DFSetMyServices(String[] services)",
      "boolean DFAddMyServices(String[] services)",
      "void DFRemoveAllMyServices()",
      "boolean AMSIsConnected(String agentName)",
      "ArrayList<String> AMSGetAllConnectedAgents()",
      "void action()",
      "boolean done()",
      "boolean isCheckedin()",
      "void setCheckedin(boolean checkedin)",
      "long getNCycles()",
      "void setNcycles(int ncycles)",
      "boolean isExit()",
      "void setExit(boolean exit)"
    ],
    "LARVAFirstAgent": [
      "void setup()",
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
      "void saveSequenceDiagram(String filename)",
      "void getUserData(String welcome)",
      "void actionPerformed(ActionEvent e)"
    ],
    "LARVAAdminAgent": [
      "void takeDown()",
      "boolean AdminGiveBirth(FactoryAgent factory, String agentname, String containername, Class c, OleConfig config)",
      "boolean AdminKill(FactoryAgent factory, String agentname)",
      "void AdminConfirmBirth()",
      "void AdminConfirmDeath(String replywith)",
      "void Notify(String what, ArrayList<Integer> UserIDs, String inReplyTo)",
      "void NotifyReferee(String what)",
      "void NotifyTeacher(String what)",
      "void NotifyClass(String what)",
      "void NotifyUser(int userID, String what)",
      "void action()",
      "boolean done()",
      "void BehaviourSplitSsetup(Processes t)",
      "void ServiceHandlerRegular(ACLMessage msg)",
      "void ServiceHandlerADMIN(ACLMessage msg)",
      "void ServiceHandlerXUI(ACLMessage msg)",
      "void ServiceHandlerNOTIFICATION(ACLMessage msg)",
      "void SetupAdmin()",
      "void FactoryAgentSetup()",
      "void DataBaseClear()",
      "void FactoryAgentClear()",
      "void AdminProcessesClear()",
      "void BehaviourDefaultClear()",
      "void doShield(Runnable r)",
      "void StatusDisableSafeMode()",
      "void StatusEnableSafeMode()",
      "void StatusSet(AlertsLevel level, Alerts category, String alert)"
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
      "TelegramLongPollingBot",
      "Agent",
      "DeathStar",
      "TelegramLongPollingBot",
      "Agent",
      "DeathStar",
      "TelegramLongPollingBot",
      "Agent",
      "DeathStar",
      "TelegramLongPollingBot",
      "Agent",
      "DeathStar",
      "TelegramLongPollingBot",
      "Agent",
      "DeathStar",
      "TelegramLongPollingBot",
      "Agent",
      "DeathStar",
      "TelegramLongPollingBot",
      "Agent",
      "DeathStar",
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
      "LARVAFirstAgent"
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
      "fontsize": 9,
      "fillcolor": "Chartreuse",
      "color": "black"
    },
    "crypto": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "MediumSpringGreen",
      "color": "black"
    },
    "data": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "Turquoise",
      "color": "black"
    },
    "database": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "CadetBlue",
      "color": "black"
    },
    "disk": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "MediumAquaMarine",
      "color": "black"
    },
    "factoryagent": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "Thistle",
      "color": "black"
    },
    "larva": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "LightSteelBlue",
      "color": "black"
    },
    "sessions": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "DarkViolet",
      "color": "black"
    },
    "telegram": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "BlueViolet",
      "color": "black"
    },
    "world": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "DarkOliveGreen",
      "color": "black"
    },
    "extern": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "gray",
      "color": "black"
    },
    "extends": "[arrowhead=onormal, penwidth=1, color=black]",
    "owns": "[style=dotted,arrowhead=odiamond, penwidth=1,color=blue]"
  }
}