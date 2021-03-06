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
          "LARVAQueen"
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
        "SessionManager": [
          
        ]
      }
    ]
  },
  "publicmethods": {
    "GMailer": [
      "void ServiceHandlerNOTIFICATION(ACLMessage msg)",
      "void takeDown()"
    ],
    "TeamController": [
      "void Execute()",
      "void takeDown()",
      "Status loadWorld()",
      "Status processRequest(ACLMessage incoming)",
      "Status processJoin(ACLMessage incoming)",
      "Status processExecute(ACLMessage incoming)",
      "Status processQuery(ACLMessage incoming)",
      "void processRegister(ACLMessage incoming)"
    ],
    "LARVAEphemeral": [
      "void unTick()",
      "void takeDown()"
    ],
    "LARVABaseTelegram": [
      "void Scheduler(TelegramChoice c)",
      "void Scheduler2(TelegramChoice c)",
      "void takeDown()",
      "abstract void sayHello();",
      "abstract void sayGoodBye();",
      "void doResumeWork()",
      "final void Execute()",
      "void ServiceHandlerNOTIFICATION(ACLMessage msg)",
      "void ShowMyGroup(TelegramChoice c)",
      "void ShowGroup(TelegramChoice c)",
      "void ShowOldGroup(TelegramChoice c)",
      "void doShowAgents(TelegramChoice c)",
      "String showProgressDetail(OleSet total, OleSet done)",
      "boolean amILocal()"
    ],
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
    "WorldController": [
      "void Execute()",
      "void takeDown()",
      "Status loadWorld()",
      "Status processRequest(ACLMessage incoming)",
      "Status processJoin(ACLMessage incoming)",
      "Status processExecute(ACLMessage incoming)",
      "Status processQuery(ACLMessage incoming)"
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
      "void action()",
      "boolean done()",
      "void action()",
      "boolean done()",
      "void action()",
      "boolean done()",
      "void action()",
      "boolean done()",
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
    ],
    "DBA2122": [
      "DBA2122 cacheTables()",
      "int DBGetAgentID(String agentName)",
      "int DBGetProblemID(String problemName)",
      "int DBGetAsignmentID(String name)",
      "Ole DBGetAssignment(int assignmentID)",
      "Ole DBGetProblem(int problemID)",
      "Ole DBGetMilestone(String milestoneID)",
      "Ole DBGetUser(int userID)",
      "void DBAddUser(int userID, String name, String email)",
      "void DBFreeALias(String alias)",
      "String DBGetFreeALias()",
      "String DBAssignAlias(int userID)",
      "int DBGetUserCourse(int userID)",
      "Ole DBGetAllUsersCID(long cid)",
      "Ole DBGetGroup(int groupID)",
      "Ole DBGetUserGroup(int userID)",
      "OleTable DBGetUserFellows(int groupID)",
      "Ole DBGetCourse(int courseID)",
      "void addUserToGroup (int userID, int groupID)",
      "void clearGroup (int groupID)",
      "void DBAddUserMilestone(int userID, int problemID, String milestoneID, String sessionID, String date)",
      "void DBAddGroupMilestone(int userID, int problemID, String milestoneID, String sessionID, String date)",
      "OleSet DBGetProblemMilestones(int problemID)",
      "OleSet DBGetProblemUserMilestones(int userID, int problemID)",
      "void DBCleanProblemUserMilestones(int userID, int problemID)",
      "OleSet DBGetProblemGroupMilestones(int groupID, int problemID)",
      "OleSet DBGetAssignmentMilestones(int assignmentID)",
      "OleSet DBGetCourseMilestones(int courseID)",
      "OleSet DBGetAssignmentUserMilestones(int userID, int assignmentID)",
      "OleSet DBGetCourseUserMilestones(int userID, int courseID)",
      "OlePassport DBGetPassport(int userID)",
      "Ole DBGetUserCredentials(int userID)",
      "boolean DBHasUserNotifications(int userID, String noti)",
      "OleSet DBGetUserNotifications(int userID)",
      "void DBActivateUserNotifications(int userID, String subscription)",
      "void DBRemoveUserNotifications(int userID, String subscription)",
      "void DBDeleteChatUserID(int userID)",
      "void DBUpdateChatUserID(int userID, long cid)",
      "boolean DBIsChatSubscribedTelegram(long cid)",
      "ArrayList<Long> DBGetAllChatsSubscribedTelegram()",
      "boolean DBIsUserSubscribedTelegram(int userID)",
      "long DBGetUserCID(int userID)",
      "void DBOpenSession(int userID, String agentName, int problemID, String sessionID)",
      "void DBUpdateStatisticsSessionSession(String sessionID, OleQuery update)",
      "void DBCloseSession(String sessionID)",
      "OleTable DBGetOpenSessions()",
      "OleTable DBGetSession(String sessionID)",
      "OleTable DBGetUserSession(int userID)",
      "boolean DBIsSessionOpen(String sessionID)",
      "void DBDoBanAgent(String agentname, String bannedUntil)",
      "void DBUndoBanAgent(String agentname)",
      "boolean DBDoCheckInAgent(String agentname, int userID)",
      "void DBDoCheckInAgent(String agentname, int userID, String container)",
      "void DBDoCheckOutAgent(String agentname)",
      "int DBIsCheckedInAgent(String agentname)",
      "int DBWhoCheckedInAgent(String agentname)",
      "String DBBannedUntilAgent(String agentname)",
      "OleTable DBGetAllAgents()",
      "OleTable DBGetAllBannedAgents()",
      "OleTable DBGetAllExceptions()",
      "void DBAddException(String agentName, String title, String description)",
      "void DBClearExceptions()"
    ],
    "StoreManager": [
      "void Execute()",
      "void processRequest(ACLMessage incoming)",
      "void takeDown()"
    ],
    "SessionManager": [
      "void takeDown()"
    ]
  },
  "class": {
    "extern": [
      "Agent",
      "Agent",
      "Agent",
      "Agent"
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
      "SessionManager",
      "SonGoanda",
      "StoreManager",
      "TeamController",
      "WorldController"
    ],
    "sessions": [
      
    ],
    "telegram": [
      
    ],
    "world": [
      
    ]
  },
  "format": {
    "agents": {
      "face": "Arial",
      "fontsize": 32,
      "fillcolor": "white",
      "color": "black"
    },
    "crypto": {
      "face": "Arial",
      "fontsize": 32,
      "fillcolor": "white",
      "color": "black"
    },
    "data": {
      "face": "Arial",
      "fontsize": 32,
      "fillcolor": "white",
      "color": "black"
    },
    "database": {
      "face": "Arial",
      "fontsize": 32,
      "fillcolor": "white",
      "color": "black"
    },
    "disk": {
      "face": "Arial",
      "fontsize": 32,
      "fillcolor": "white",
      "color": "black"
    },
    "factoryagent": {
      "face": "Arial",
      "fontsize": 32,
      "fillcolor": "white",
      "color": "black"
    },
    "larva": {
      "face": "Arial",
      "fontsize": 32,
      "fillcolor": "white",
      "color": "black"
    },
    "sessions": {
      "face": "Arial",
      "fontsize": 32,
      "fillcolor": "white",
      "color": "black"
    },
    "telegram": {
      "face": "Arial",
      "fontsize": 32,
      "fillcolor": "white",
      "color": "black"
    },
    "world": {
      "face": "Arial",
      "fontsize": 32,
      "fillcolor": "white",
      "color": "black"
    },
    "extern": {
      "face": "Arial",
      "fontsize": 32,
      "fillcolor": "gray",
      "color": "black"
    },
    "extends": "[arrowhead=onormal, penwidth=2, color=black]",
    "owns": "[style=dotted,arrowhead=odiamond, penwidth=2,color=blue]"
  }
}