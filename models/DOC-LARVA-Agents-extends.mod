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
      "ArrayList<String> DFGetProviderList()",
      "ArrayList<String> DFGetServiceList()",
      "ArrayList<String> DFGetAllProvidersOf(String service)",
      "ArrayList<String> DFGetAllServicesProvidedBy(String agentName)",
      "boolean DFHasService(String agentName, String service)",
      "boolean DFSetMyServices(String[] services)",
      "boolean DFAddMyServices(String[] services)",
      "boolean DFRemoveMyServices(String[] services)",
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
      "void setExit(boolean exit)",
      "void Error(String message)",
      "void Message(String message)",
      "void Info(String message)",
      "void Alert(String message)",
      "boolean Confirm(String message)",
      "String inputLine(String message)",
      "void BehaviourDefaultSetup()"
    ],
    "LARVAFirstAgent": [
      "void setup()",
      "void LARVAwait(int milis)",
      "void doShield(Runnable r)",
      "void doExit()",
      "void doNotExit()",
      "void action()",
      "boolean done()",
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
      "void clearSequenceDiagram()",
      "void getUserData(String welcome)",
      "void actionPerformed(ActionEvent e)",
      "Choice Ag(Environment E, DecisionSet A)",
      "DecisionSet Prioritize(Environment E, DecisionSet A)",
      "Environment T(Environment E, Choice a)",
      "double U(Environment E)",
      "boolean Va(Environment E, Choice a)",
      "boolean Ve(Environment E)",
      "boolean G(Environment E)",
      "void BehaviourDefaultSetup()",
      "void waitRemoteSemaphore()",
      "boolean isSwing()",
      "void enableDeepLARVAMonitoring()",
      "String[] getConfiguredSensors(OleConfig ocfg)",
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
      "void doSwingLater(Runnable what)",
      "void doSwingWait(Runnable what)",
      "void closeRemote()",
      "void openRemote()"
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
      "void StatusSet(AlertsLevel level, Alerts category, String alert)",
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