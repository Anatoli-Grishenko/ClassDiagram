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
  "publicmethods": {
    "LARVABaseAgent": [
      "void setup()",
      "void takeDown()",
      "void Execute()",
      "ArrayList<String> DFGetProviderList()",
      "ArrayList<String> DFGetServiceList()",
      "ArrayList<String> DFGetAllProvidersOf(String service)",
      "ArrayList<String> DFGetAllServicesProvidedBy(String agentName)",
      "boolean DFHasService(String agentName, String service)",
      "boolean DFSetMyServices(String[] services)",
      "void DFRemoveAllMyServices()",
      "boolean AMSIsConnected(String agentName)",
      "ArrayList<String> AMSGetAllConnectedAgents()",
      "void action()",
      "boolean done()",
      "boolean isCheckedin()",
      "void setCheckedin(boolean checkedin)",
      "int getNCycles()",
      "void setNcycles(int ncycles)",
      "boolean isExit()",
      "void setExit(boolean exit)"
    ],
    "LARVAFirstAgent": [
      "void takeDown()",
      "boolean loadMyPassport(String passportFileName)",
      "void setMypassport(String mypassport)",
      "String getMypassport()",
      "ACLMessage LARVAblockingReceive(MessageTemplate t)",
      "void Alert(String message)",
      "void doActivateLARVADash()",
      "String getIdentityManager()",
      "void setIdentityManager(String IdentityManager)",
      "ArrayList<String> DFGetProviderList()",
      "ArrayList<String> DFGetServiceList()",
      "ArrayList<String> DFGetAllProvidersOf(String service)",
      "ArrayList<String> DFGetAllServicesProvidedBy(String agentName)",
      "boolean DFHasService(String agentName, String service)",
      "void saveSequenceDiagram(String filename)",
      "void getUserData(String welcome)"
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
  "protectedmethods": {
    "LARVABaseAgent": [
      "void Error(String message)",
      "void Info(String message)",
      "void Alert(String message)",
      "boolean Confirm(String message)",
      "String inputLine(String message)",
      "void BehaviourDefaultSetup()"
    ],
    "LARVAFirstAgent": [
      "boolean isSwing()",
      "void enableDeepLARVAMonitoring()",
      "String[] getConfiguredSensors()",
      "void Error(String message)",
      "void Info(String message)",
      "boolean doLARVACheckin()",
      "boolean doLARVACheckout()",
      "void LARVAsend(ACLMessage msg)",
      "ACLMessage LARVAblockingReceive()",
      "ACLMessage LARVAblockingReceive(MessageTemplate t, long milis)",
      "boolean Confirm(String message)",
      "String inputLine(String message)",
      "String inputSelect(String message, String[] options, String value)",
      "void refreshGUI()",
      "void doSwingLater(Runnable what)",
      "void doSwingWait(Runnable what)"
    ],
    "LARVAAdminAgent": [
      "void doRebootNow()",
      "void doShutdownNow()",
      "void pressReturn()",
      "boolean AdminCheckSender(ACLMessage msg)",
      "OleReport ReportAgent()",
      "void BehaviourDefaultSetup()",
      "void SetupLegacy()",
      "void PingSetup()",
      "void onTick()",
      "void DataBaseSetup()",
      "ACLMessage pullACLM(MessageTemplate t)",
      "String colorMessage(String protocol, String message)",
      "void pushACLM(ACLMessage msg)",
      "String RespondError(ACLMessage msg, int performative, String details)",
      "String RespondSuccess(ACLMessage msg, int performative, String details)",
      "String RespondAdmin(ACLMessage msg, int performative, Ole details)",
      "void Error(String message)",
      "void Error(String message, Session s)",
      "void Info(String message)",
      "void Info(String message, Session s)",
      "void MinorException(Alerts a, String title, Exception ex)",
      "void MajorException(Alerts a, String title, Exception ex)",
      "void StatusAlert(Alerts category, String title, String alert)",
      "void StatusEmergencyMode(Alerts category, String title, String alert)",
      "void StatusSafeMode()",
      "String encodeProduct(String product)",
      "String decodeProduct(String code)",
      "boolean tooManyRequests(ACLMessage incoming)",
      "boolean toGmailer(int userID, String subject, String body)"
    ]
  },
  "class": {
    "extern": [
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
      "fontsize": 16,
      "fillcolor": "white",
      "color": "black"
    },
    "swing": {
      "face": "Arial",
      "fontsize": 16,
      "fillcolor": "white",
      "color": "black"
    },
    "agents": {
      "face": "Arial",
      "fontsize": 16,
      "fillcolor": "white",
      "color": "black"
    },
    "appboot": {
      "face": "Arial",
      "fontsize": 16,
      "fillcolor": "white",
      "color": "black"
    },
    "basher": {
      "face": "Arial",
      "fontsize": 16,
      "fillcolor": "white",
      "color": "black"
    },
    "console": {
      "face": "Arial",
      "fontsize": 16,
      "fillcolor": "white",
      "color": "black"
    },
    "crypto": {
      "face": "Arial",
      "fontsize": 16,
      "fillcolor": "white",
      "color": "black"
    },
    "database": {
      "face": "Arial",
      "fontsize": 16,
      "fillcolor": "white",
      "color": "black"
    },
    "disk": {
      "face": "Arial",
      "fontsize": 16,
      "fillcolor": "white",
      "color": "black"
    },
    "factoryagent": {
      "face": "Arial",
      "fontsize": 16,
      "fillcolor": "white",
      "color": "black"
    },
    "geometry": {
      "face": "Arial",
      "fontsize": 16,
      "fillcolor": "white",
      "color": "black"
    },
    "glossary": {
      "face": "Arial",
      "fontsize": 16,
      "fillcolor": "white",
      "color": "black"
    },
    "larva": {
      "face": "Arial",
      "fontsize": 16,
      "fillcolor": "white",
      "color": "black"
    },
    "map2D": {
      "face": "Arial",
      "fontsize": 16,
      "fillcolor": "white",
      "color": "black"
    },
    "messaging": {
      "face": "Arial",
      "fontsize": 16,
      "fillcolor": "white",
      "color": "black"
    },
    "ontology": {
      "face": "Arial",
      "fontsize": 16,
      "fillcolor": "white",
      "color": "black"
    },
    "sessions": {
      "face": "Arial",
      "fontsize": 16,
      "fillcolor": "white",
      "color": "black"
    },
    "telegram": {
      "face": "Arial",
      "fontsize": 16,
      "fillcolor": "white",
      "color": "black"
    },
    "tools": {
      "face": "Arial",
      "fontsize": 16,
      "fillcolor": "white",
      "color": "black"
    },
    "world": {
      "face": "Arial",
      "fontsize": 16,
      "fillcolor": "white",
      "color": "black"
    },
    "extern": {
      "face": "Arial",
      "fontsize": 16,
      "fillcolor": "gray",
      "color": "black"
    },
    "extends": "[arrowhead=onormal, penwidth=1, color=black]",
    "owns": "[style=dotted,arrowhead=odiamond, penwidth=1,color=blue]"
  }
}