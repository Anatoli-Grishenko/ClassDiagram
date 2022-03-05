{
  "classtypes": [
    "larva"
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
        "LARVAEphemeral": [
          "SessionManager",
          "StoreManager"
        ]
      },
      {
        "LARVAAdminAgent": [
          "DataBaser",
          "DrDiagnostic",
          "EmptyAgent",
          "GMailer",
          "IdentityManager",
          "LARVAQueen",
          "ProblemManager"
        ]
      }
    ],
    "owns": [
      {
        "IdentityManager": [
          
        ]
      },
      {
        "WorldController": [
          
        ]
      },
      {
        "DrDiagnostic": [
          
        ]
      },
      {
        "LARVA": [
          
        ]
      },
      {
        "SessionManager": [
          
        ]
      },
      {
        "GMailer": [
          
        ]
      },
      {
        "Mario": [
          
        ]
      },
      {
        "TeamController": [
          
        ]
      },
      {
        "StoreManager": [
          
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
        "ProblemManager": [
          
        ]
      },
      {
        "HWManager": [
          
        ]
      },
      {
        "EmptyAgent": [
          
        ]
      },
      {
        "DataBaser": [
          
        ]
      },
      {
        "LARVAQueen": [
          
        ]
      }
    ]
  },
  "methods": {
    "IdentityManager": [
      "protected void onTick()",
      "public void Execute()",
      "public void takeDown()",
      "protected void doSubscribe(ACLMessage msg)",
      "protected void doCancel(ACLMessage msg)",
      "protected void purgeAgents()"
    ],
    "WorldController": [
      "public void Execute()",
      "public void takeDown()",
      "public Status loadWorld()",
      "public Status processRequest(ACLMessage incoming)",
      "public Status processJoin(ACLMessage incoming)",
      "public Status processExecute(ACLMessage incoming)",
      "public Status processQuery(ACLMessage incoming)",
      "protected void updateXUI(String agentname)"
    ],
    "DrDiagnostic": [
      "public void Execute()",
      "public void doLauchQueries(AdminDiagnostic d)",
      "public void takeDown()",
      "public void ServiceHandlerADMIN(ACLMessage msg)",
      "public void PeriodicCheckSetup()",
      "protected void onTick()",
      "protected void findRoles()"
    ],
    "LARVA": [
      
    ],
    "SessionManager": [
      "public void takeDown()",
      "protected void Introduction()",
      "protected void solvedProblem(String problemName)",
      "protected void Error(String message)",
      "protected void Info(String message)",
      "protected void addMilestone(String milestone)"
    ],
    "GMailer": [
      "public void ServiceHandlerNOTIFICATION(ACLMessage msg)",
      "protected void sendGmail(String receiver, String subject, String body)",
      "protected void sendGmail(String receiver, String subject, String body, String filename)",
      "public void takeDown()"
    ],
    "Mario": [
      "public void Execute()",
      "public void takeDown()"
    ],
    "TeamController": [
      "public void Execute()",
      "public void takeDown()",
      "public Status loadWorld()",
      "public Status processRequest(ACLMessage incoming)",
      "public Status processJoin(ACLMessage incoming)",
      "public Status processExecute(ACLMessage incoming)",
      "public Status processQuery(ACLMessage incoming)",
      "protected void updateXUIAgent(String agentname)",
      "protected void updateXUIGoals()",
      "public void processRegister(ACLMessage incoming)"
    ],
    "StoreManager": [
      "public void Execute()",
      "public void processRequest(ACLMessage incoming)",
      "protected void supplyStore()",
      "protected void buyProduct(ACLMessage incoming, String product)",
      "protected void shoppingList(ACLMessage incoming)",
      "public void takeDown()"
    ],
    "Goku": [
      "public void Execute()",
      "public void takeDown()"
    ],
    "LARVAPublicTelegram": [
      "public void takeDown()",
      "protected String getBotName()",
      "protected String getBotToken()",
      "public void sayHello()",
      "public void sayGoodBye()"
    ],
    "LARVAPrivateTelegram": [
      "public void takeDown()",
      "protected void doShowStudents(TelegramChoice c)",
      "public void defineGroup(TelegramChoice c)",
      "protected String getBotName()",
      "protected String getBotToken()",
      "public void sayHello()",
      "public void sayGoodBye()",
      "public void shutDownNow(TelegramChoice c)",
      "public void reBootNow(TelegramChoice c)",
      "public void doResume(TelegramChoice c)",
      "protected void processIncomingTelegram(long cid, Update u)",
      "this.doInformERROR(cid, \"This is a private chat. This operation is not allowed.\");",
      "public void doExceptions(TelegramChoice c)",
      "public void getAllPassports(TelegramChoice c)",
      "protected void doBroadcast(TelegramChoice c)",
      "protected void processTelegramCommand(long cid, Update u)"
    ],
    "SonGoanda": [
      "public void Execute()",
      "public void takeDown()"
    ],
    "ProblemManager": [
      "public void Execute()",
      "protected void processInternal(ACLMessage incoming)",
      "protected void processRequests(ACLMessage incoming)",
      "protected void doOpenProblem(ACLMessage incoming)",
      "protected void doCancelProblem(ACLMessage incoming)",
      "public boolean doOpenSession(ACLMessage incoming)",
      "public void doForcedCloseSession(String sessionID)",
      "public boolean doCloseSession(String sessionKey)",
      "public void purgeSessions()",
      "public void takeDown()"
    ],
    "HWManager": [
      "public void Execute()",
      "public void takeDown()"
    ],
    "EmptyAgent": [
      "public void Execute()",
      "public void takeDown()"
    ],
    "DataBaser": [
      "public void Execute()",
      "public void takeDown()"
    ],
    "LARVAQueen": [
      "protected String doProgressBar(int n, int total, int length, String done, String undone)",
      "public void Execute()",
      "public void ServiceHandlerADMIN(ACLMessage msg)",
      "public void takeDown()"
    ]
  },
  "class": {
    "larva": [
      "DataBaser",
      "DrDiagnostic",
      "EmptyAgent",
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
    ]
  },
  "format": {
    "larva": {
      "face": "Arial",
      "fontsize": 24,
      "fillcolor": "Chartreuse",
      "color": "black"
    },
    "extends": "[arrowhead=onormal,color=black]",
    "owns": "[style=dotted,arrowhead=odiamond,color=blue]"
  }
}