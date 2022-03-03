{
  "classtypes": [
    "agents",
    "crypto",
    "data",
    "database",
    "factoryagent",
    "larva",
    "sessions",
    "telegram"
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
          "LARVABaseTelegram",
          "LARVAEphemeral",
          "LARVAQueen",
          "ProblemManager"
        ]
      }
    ],
    "owns": [
      {
        "LARVABaseTelegram": [
          
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
        "AdminPassport": [
          
        ]
      },
      {
        "AdminCryptor": [
          
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
        "LARVAEphemeral": [
          
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
        "LARVAQueen": [
          "FactoryAgent"
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
        "SessionManager": [
          
        ]
      },
      {
        "ADMINMessage": [
          "LARVAAdminAgent"
        ]
      },
      {
        "LARVAAdminAgent": [
          "FactoryAgent",
          "DBA2122",
          "AdminCryptor"
        ]
      },
      {
        "FactoryAgent": [
          "LARVAAdminAgent"
        ]
      },
      {
        "DBA2122": [
          
        ]
      },
      {
        "DBA2021": [
          
        ]
      },
      {
        "ProblemManager": [
          
        ]
      },
      {
        "ProductCoin": [
          
        ]
      },
      {
        "DataBaser": [
          
        ]
      },
      {
        "Session": [
          "DBA2122"
        ]
      }
    ]
  },
  "methods": {
    "LARVABaseTelegram": [
      "public void Scheduler(TelegramChoice c)",
      "public void Scheduler2(TelegramChoice c)",
      "public void takeDown()",
      "public abstract void sayHello();",
      "public abstract void sayGoodBye();",
      "public void doResumeWork()",
      "public final void Execute()",
      "protected void processTelegramCallBack(long cid, Update u)",
      "protected void processIncomingTelegram(long cid, Update u)",
      "protected String getSubscriptions(long cid)",
      "protected void euroVote(TelegramChoice c)",
      "protected void selectGroup(TelegramChoice c)",
      "protected void toggleNotification(TelegramChoice c)",
      "protected void processTelegramCommand(long cid, Update u)",
      "protected void processIncomingACLM(ACLMessage aclu)",
      "protected abstract String getBotName();",
      "protected abstract String getBotToken();",
      "public void ServiceHandlerNOTIFICATION(ACLMessage msg)",
      "protected void startTelegram()",
      "protected void endTelegram()",
      "protected void sendTelegram(long cid, String what)",
      "protected final void sendTelegram(long cid, String what, TelegramMenu menu)",
      "protected final void sendTelegramPhoto(long cid, String what, String filename, TelegramMenu menu)",
      "protected void doInformOK(long cid, String what)",
      "protected void doInformERROR(long cid, String what)",
      "protected void doCleanHelloWorld(TelegramChoice c)",
      "protected void doSubscribe(TelegramChoice c)",
      "protected void doCancel(TelegramChoice c)",
      "protected void doBannedAgents(TelegramChoice c)",
      "protected void doGetPassport(TelegramChoice c)",
      "protected void doAnalytics(TelegramChoice c)",
      "protected String doAnalyticsClass(TelegramChoice c)",
      "protected String doAnalyticsMe(TelegramChoice c)",
      "protected String doAnalyticsSummary(int userID)",
      "protected String doShortAnalyticsSummary(int userID)",
      "protected String doAnalyticsProblem(TelegramChoice c)",
      "protected String doAnalyticsProblemUser(TelegramChoice c)",
      "public void ShowMyGroup(TelegramChoice c)",
      "public void ShowGroup(TelegramChoice c)",
      "public void ShowOldGroup(TelegramChoice c)",
      "public void doShowAgents(TelegramChoice c)",
      "protected void doHelp(TelegramChoice c)",
      "protected String showMilestone(String milestoneID)",
      "protected String showProblem(String problemName)",
      "protected String showAssignment(String assignmentName)",
      "protected String showAssignmentSummary(String assignmentName)",
      "protected String showAllAssignments()",
      "protected void checkAgentDiagnostic() throws Exception",
      "protected void doDiagnoseLARVA(long cid, String command)",
      "protected void doCheckConnection(TelegramChoice c)",
      "protected void doCheckStatus(TelegramChoice c)",
      "protected void doCheckServices(TelegramChoice c)",
      "protected void doCheckReport(TelegramChoice c)",
      "protected boolean storePassport(long cid, Update u)",
      "this.doInformERROR(cid, \"This is a private chat. This operation is not allowed.\");",
      "public String showProgressDetail(OleSet total, OleSet done)",
      "protected String under(String text)",
      "protected String bold(String text)",
      "protected String italic(String text)",
      "protected String mono(String text)",
      "protected String tab()",
      "public boolean amILocal()",
      "protected void TelegramException(long cid, String what, Exception ex)",
      "protected boolean isTelegramException()",
      "protected int getExceptions()",
      "protected void addException()",
      "protected void resetException()",
      "protected int limitException()",
      "protected int getTimeOutException()",
      "protected boolean cancelException()",
      "protected boolean checkExceptions(String what)"
    ],
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
    "TelegramUpdates": [
      "public void initChatID(long cid)",
      "public Set<Long> getAllChatIDRegistered()",
      "protected synchronized boolean isEmptyChatID(long chatID)",
      "public synchronized boolean isEmptyUserID(int userID)",
      "public synchronized boolean isAllEmpty()",
      "public long getChatIDUser(int userID)",
      "public List<Long> getAllChatIDActive()",
      "public List<Long> getAllChatIDGroup(int groupID)",
      "protected ArrayList<Update> getChatIDPendingUpdates(long chatID)",
      "protected ArrayList<Update> getUserIDPendingUpdates(int userID)",
      "public synchronized void pushUpdate(Update update)",
      "public synchronized Update popUpdateChatID(long chatID)",
      "public synchronized Update popUpdateUserID(int userID)",
      "public TelegramChat getChatData(long cid)"
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
    "AdminPassport": [
      "public AdminPassport(Ole o)",
      "public Ole loadEncryptedFile(String fullfilename)",
      "public int getUserID()",
      "public String getCid()",
      "public String getAlias()",
      "public String getEmail()",
      "public String getName()",
      "public boolean isEmpty()"
    ],
    "AdminCryptor": [
      "public AdminCryptor(String k)",
      "public String keyPradoEncode(int pradocode)",
      "public int keyPradoDecode(String pradocode)",
      "public String enCrypt(String text)",
      "public String deCrypt(String text)"
    ],
    "Goku": [
      "public void Execute()",
      "public void takeDown()"
    ],
    "TelegramMenuBar": [
      "public TelegramMenu addMenu(String name)",
      "public TelegramMenu getMenu(String name)",
      "public TelegramMenuBar addOption(TelegramMenu m, String option, Consumer<TelegramChoice> r)",
      "public TelegramMenuBar addOption(TelegramMenu m, String option, TelegramMenu subm)",
      "public TelegramMenuBar addOption(TelegramMenu m, String option)",
      "public TelegramMenuOption getOption(String code)",
      "public TelegramMenu getRootMenu()",
      "public void setRootMenu(TelegramMenu rootMenu)",
      "public TelegramMenu getLastMenu(long cid)",
      "public void setLastMenu(long cid, TelegramMenu lastMenu)",
      "public boolean isMenu(String option)",
      "public boolean isOption(String option)",
      "public boolean isValidChoice(String option)",
      "public TelegramMenu processChoice(long cid, String c)"
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
    "LARVAEphemeral": [
      "protected void onTick()",
      "public void unTick()",
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
    "TelegramChat": [
      "public void resetChat()",
      "public boolean isValidChat()",
      "public void setUserID(int userID)",
      "public void setGroupID(int groupID)",
      "public void setCourseID(int courseID)",
      "public void setUsername(String username)",
      "public void setGroupname(String groupname)",
      "public void setTeacher(boolean teacher)",
      "public void setSubscribed(boolean subscribed)",
      "public boolean isTeacher()",
      "public boolean isSubscribed()",
      "public void setPendingUpdates(ArrayList<Update> pendingUpdates)",
      "public int getUserID()",
      "public int getGroupID()",
      "public int getCourseID()",
      "public String getUsername()",
      "public String getGroupname()",
      "public ArrayList<Update> getPendingUpdates()"
    ],
    "DBAAPI": [
      
    ],
    "LARVAQueen": [
      "protected String doProgressBar(int n, int total, int length, String done, String undone)",
      "public void Execute()",
      "public void ServiceHandlerADMIN(ACLMessage msg)",
      "public void takeDown()"
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
    "LARVATelegramBot": [
      "public String getBotUsername()",
      "public String getBotToken()",
      "public void onUpdateReceived(Update update)",
      "if (privateDBA)"
    ],
    "SessionManager": [
      "public void takeDown()",
      "protected void Introduction()",
      "protected void solvedProblem(String problemName)",
      "protected void Error(String message)",
      "protected void Info(String message)",
      "protected void addMilestone(String milestone)"
    ],
    "TelegramChoice": [
      
    ],
    "TelegramMenu": [
      "public TelegramMenu setDescription(String d)",
      "public TelegramMenu setColumns(int nc)",
      "public TelegramMenu addButton(String text)",
      "public String getName()",
      "public TelegramMenu setName(String name)",
      "public String getDescription()",
      "public ReplyKeyboardMarkup getKeyboard()"
    ],
    "ADMINMessage": [
      "public ADMINMessage(LARVAAdminAgent sender)",
      "protected final void init(LARVAAdminAgent sender)",
      "public void setJsonContent(JsonObject jso)"
    ],
    "DBAgent": [
      "private DBAgent setDefault()",
      "public Ole get()",
      "public DBAgent set(Ole o)",
      "private DBAgent()",
      "public DBAgent clear()"
    ],
    "LARVAAdminAgent": [
      "public void takeDown()",
      "protected void doRebootNow()",
      "protected void doShutdownNow()",
      "protected void pressReturn()",
      "protected boolean AdminCheckSender(ACLMessage msg)",
      "public boolean AdminGiveBirth(FactoryAgent factory, String agentname, String containername, Class c, OleConfig config)",
      "public boolean AdminKill(FactoryAgent factory, String agentname)",
      "public void AdminConfirmBirth()",
      "public void AdminConfirmDeath(String replywith)",
      "protected OleReport ReportAgent()",
      "public void Notify(String what, ArrayList<Integer> UserIDs, String inReplyTo)",
      "public void NotifyReferee(String what)",
      "public void NotifyTeacher(String what)",
      "public void NotifyClass(String what)",
      "public void NotifyUser(int userID, String what)",
      "protected void BehaviourDefaultSetup()",
      "public void action()",
      "public boolean done()",
      "public void BehaviourSplitSsetup(Processes t)",
      "public void action()",
      "public boolean done()",
      "public void action()",
      "public boolean done()",
      "public void action()",
      "public boolean done()",
      "public void action()",
      "public boolean done()",
      "public void ServiceHandlerRegular(ACLMessage msg)",
      "public void ServiceHandlerADMIN(ACLMessage msg)",
      "public void ServiceHandlerXUI(ACLMessage msg)",
      "public void ServiceHandlerNOTIFICATION(ACLMessage msg)",
      "public void SetupAdmin()",
      "protected void SetupLegacy()",
      "protected void PingSetup()",
      "protected void onTick()",
      "protected void DataBaseSetup()",
      "protected void onTick()",
      "public void FactoryAgentSetup()",
      "protected void onTick()",
      "public void DataBaseClear()",
      "public void FactoryAgentClear()",
      "public void AdminProcessesClear()",
      "public void BehaviourDefaultClear()",
      "private void doValidateDB()",
      "protected ACLMessage pullACLM(MessageTemplate t)",
      "protected String colorMessage(String protocol, String message)",
      "protected void pushACLM(ACLMessage msg)",
      "protected String RespondError(ACLMessage msg, int performative, String details)",
      "protected String RespondSuccess(ACLMessage msg, int performative, String details)",
      "protected String RespondAdmin(ACLMessage msg, int performative, Ole details)",
      "protected void Error(String message)",
      "protected void Error(String message, Session s)",
      "protected void Info(String message)",
      "protected void Info(String message, Session s)",
      "protected void MinorException(Alerts a, String title, Exception ex)",
      "public void doShield(Runnable r)",
      "protected void MajorException(Alerts a, String title, Exception ex)",
      "protected void StatusAlert(Alerts category, String title, String alert)",
      "protected void StatusEmergencyMode(Alerts category, String title, String alert)",
      "protected void StatusSafeMode()",
      "public void StatusDisableSafeMode()",
      "public void StatusEnableSafeMode()",
      "public void StatusSet(AlertsLevel level, Alerts category, String alert)",
      "protected String encodeProduct(String product)",
      "protected String decodeProduct(String code)",
      "protected boolean tooManyRequests(ACLMessage incoming)",
      "protected boolean toGmailer(int userID, String subject, String body)"
    ],
    "FactoryAgent": [
      "public ArrayList<String> getAllAgentNames()",
      "public ArrayList<String> getAllContainerNames()",
      "public String getMainContainerName()",
      "public boolean createContainer(String containername)",
      "public boolean birthAgent(String agentname, Class c, String parameters[])",
      "public boolean birthAgent(String agentname, Class c, String parameters[], String containername)",
      "public boolean killAgent(String agentname)",
      "public boolean killContainer(String containername)",
      "public boolean killAllAgents()",
      "public boolean killAllContainers()",
      "public String purgeAgents()",
      "public void killAllExit()",
      "public String defReportType()",
      "public String[] defReportableObjectList()",
      "public String reportObjectStatus(String objectid)"
    ],
    "DBA2122": [
      "public DBA2122 cacheTables()",
      "public int DBGetAgentID(String agentName)",
      "public int DBGetProblemID(String problemName)",
      "public int DBGetAsignmentID(String name)",
      "public Ole DBGetAssignment(int assignmentID)",
      "public Ole DBGetProblem(int problemID)",
      "public Ole DBGetMilestone(String milestoneID)",
      "public Ole DBGetUser(int userID)",
      "public void DBAddUser(int userID, String name, String email)",
      "public void DBFreeALias(String alias)",
      "public String DBGetFreeALias()",
      "public String DBAssignAlias(int userID)",
      "public int DBGetUserCourse(int userID)",
      "public Ole DBGetAllUsersCID(long cid)",
      "public Ole DBGetGroup(int groupID)",
      "public Ole DBGetUserGroup(int userID)",
      "public OleTable DBGetUserFellows(int groupID)",
      "public Ole DBGetCourse(int courseID)",
      "public void addUserToGroup (int userID, int groupID)",
      "public void clearGroup (int groupID)",
      "public void DBAddUserMilestone(int userID, int problemID, String milestoneID, String sessionID, String date)",
      "public void DBAddGroupMilestone(int userID, int problemID, String milestoneID, String sessionID, String date)",
      "public OleSet DBGetProblemMilestones(int problemID)",
      "public OleSet DBGetProblemUserMilestones(int userID, int problemID)",
      "public void DBCleanProblemUserMilestones(int userID, int problemID)",
      "public OleSet DBGetProblemGroupMilestones(int groupID, int problemID)",
      "public OleSet DBGetAssignmentMilestones(int assignmentID)",
      "public OleSet DBGetCourseMilestones(int courseID)",
      "public OleSet DBGetAssignmentUserMilestones(int userID, int assignmentID)",
      "public OleSet DBGetCourseUserMilestones(int userID, int courseID)",
      "public OlePassport DBGetPassport(int userID)",
      "public Ole DBGetUserCredentials(int userID)",
      "public boolean DBHasUserNotifications(int userID, String noti)",
      "public OleSet DBGetUserNotifications(int userID)",
      "public void DBActivateUserNotifications(int userID, String subscription)",
      "public void DBRemoveUserNotifications(int userID, String subscription)",
      "public void DBDeleteChatUserID(int userID)",
      "public void DBUpdateChatUserID(int userID, long cid)",
      "public boolean DBIsChatSubscribedTelegram(long cid)",
      "public ArrayList<Long> DBGetAllChatsSubscribedTelegram()",
      "public boolean DBIsUserSubscribedTelegram(int userID)",
      "public long DBGetUserCID(int userID)",
      "public void DBOpenSession(int userID, String agentName, int problemID, String sessionID)",
      "public void DBUpdateStatisticsSessionSession(String sessionID, OleQuery update)",
      "public void DBCloseSession(String sessionID)",
      "public OleTable DBGetOpenSessions()",
      "public OleTable DBGetSession(String sessionID)",
      "public OleTable DBGetUserSession(int userID)",
      "public boolean DBIsSessionOpen(String sessionID)",
      "public void DBDoBanAgent(String agentname, String bannedUntil)",
      "public void DBUndoBanAgent(String agentname)",
      "public boolean DBDoCheckInAgent(String agentname, int userID)",
      "public void DBDoCheckInAgent(String agentname, int userID, String container)",
      "public void DBDoCheckOutAgent(String agentname)",
      "public int DBIsCheckedInAgent(String agentname)",
      "public int DBWhoCheckedInAgent(String agentname)",
      "public String DBBannedUntilAgent(String agentname)",
      "public OleTable DBGetAllAgents()",
      "public OleTable DBGetAllBannedAgents()",
      "public OleTable DBGetAllExceptions()",
      "public void DBAddException(String agentName, String title, String description)",
      "public void DBClearExceptions()"
    ],
    "DBA2021": [
      "public DBA2021 cacheTables()",
      "public int DBGetAgentID(String agentName)",
      "public int DBGetProblemID(String problemName)",
      "public String DBGetProblemMilestones(int problemID)",
      "public Ole DBGetAssignment(int assignmentID)",
      "public Ole DBGetProblem(int problemID)",
      "public Ole DBGetUser(int userID)",
      "public Ole DBGetAllUsersCID(long cid)",
      "public Ole DBGetGroup(int groupID)",
      "public Ole DBGetUserGroup(int userID)",
      "public OleTable DBGetUserFellows(int groupID)",
      "public String DBGetProgressByUserID(int userID, int problemID)",
      "public String DBGetProgressByGroupID(int groupID, int problemID)",
      "public OlePassport DBGetPassport(int userID)",
      "public Ole DBGetUserCredentials(int userID)",
      "public void DBUpdateChatUserID(int userID, String cid)",
      "public boolean DBIsSubscribedCID(long cid)",
      "public ArrayList<Long> DBGetAllSubscribedCid()",
      "public boolean DBIsUserIDSubscribedTo(int userID, String token)",
      "public void DBOpenSession(int userID, int agentID, int problemID, String sessionID)",
      "public void DBCloseSession(String sessionID)",
      "public OleTable DBGetOpenSessions()",
      "public OleTable DBGetSession(String sessionID)",
      "public boolean DBIsSessionOpen(String sessionID)",
      "public void DBDoBanAgent(String agentname, String bannedUntil)",
      "public void DBDoCheckInAgent(String agentname, int userID)",
      "public void DBDoCheckInAgent(String agentname, int userID, String container)",
      "public void DBDoCheckOutAgent(String agentname)",
      "public int DBIsCheckedInAgent(String agentname)",
      "public int DBWhoCheckedInAgent(String agentname)",
      "public String DBBannedUntilAgent(String agentname)",
      "public OleTable DBGetAllAgents()",
      "public OleTable DBGetAllBannedAgents()",
      "public OleTable DBGetAllExceptions()",
      "public void DBAddException(String agentName, String title, String description)",
      "public void DBClearExceptions()"
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
    "TelegramMenuOption": [
      "public TelegramMenuOption(Consumer <TelegramChoice> handler)",
      "public TelegramMenuOption()",
      "public boolean isExit()"
    ],
    "ProductCoin": [
      
    ],
    "DataBaser": [
      "public void Execute()",
      "public void takeDown()"
    ],
    "Session": [
      "public Session(DBA2122 db)",
      "public String open()",
      "public void close()",
      "public final Session clear()",
      "public boolean isEmpty()",
      "public Ole toOle()",
      "public Session fromOle(Ole o)",
      "public Session setOwner(String agentName)",
      "public Session addGuest(String agentName)",
      "public World getWorld()",
      "public void setWorld(World world)",
      "public Session setContext(String problemName)",
      "public void setDatabase(DBA2122 database)",
      "public void setUserID(int userID)",
      "public void setProblemID(int problemID)",
      "public void setGroupID(int groupID)",
      "public void setAssignmentID(int assignmentID)",
      "public void setAgentID(int agentID)",
      "public void setIsIndividual(boolean isIndividual)",
      "public void setUserName(String userName)",
      "public void setAgentName(String agentName)",
      "public void setProblemName(String problemName)",
      "public void setGroupName(String groupName)",
      "public void setSessionID(String sessionID)",
      "public void setAssignmentName(String assignmentName)",
      "public void setControllerName(String controllerName)",
      "public void setProblemMilestones(OleSet problemMilestones)",
      "public void setSessionMilestones(OleSet sessionMilestones)",
      "public void setLastAction(String lastAction)",
      "public void setSessionLogger(Logger sessionLogger)",
      "public DBA2122 getDatabase()",
      "public int getUserID()",
      "public int getProblemID()",
      "public int getGroupID()",
      "public int getAssignmentID()",
      "public int getAgentID()",
      "public boolean getIsIndividual()",
      "public String getUserName()",
      "public String getAgentName()",
      "public String getProblemName()",
      "public String getGroupName()",
      "public String getSessionID()",
      "public String getAssignmentName()",
      "public String getControllerName()",
      "public OleSet getProblemMilestones()",
      "public OleSet getSessionMilestones()",
      "public String getLastAction()",
      "public Logger getSessionLogger()",
      "public ArrayList<Integer> getFellowsID()",
      "public String getContainerName()",
      "public void setContainerName(String containerName)",
      "public OleSet getSessionMilestonesMissing()",
      "public void setSessionMilestonesMissing(OleSet sessionMilestonesMissing)",
      "public OleSet getAchievedMilestones()",
      "public void setAchievedMilestones(OleSet achievedMilestones)",
      "public Map2DColor getMap()",
      "public void setMap(Map2DColor map)",
      "public liveBot registerAgent(String name, Roles rol, int basex, int basey, OleSet attachments)",
      "public liveBot findAgent(String name)",
      "public void addTrace(String record)",
      "public boolean execAgent(liveBot agent, String action)",
      "public void checkStatus(liveBot agent)",
      "public String isGoal(liveBot agent)",
      "public JsonObject getGoals()",
      "public JsonObject readPerceptions(liveBot agent)",
      "public JsonObject getPerceptions(liveBot agent)",
      "public int getNumPayload()",
      "public int getNumSteps()",
      "public int getEnergyBurnt()",
      "public boolean hasDistances()",
      "public int getElapsedTime()",
      "public String getOpenDate()",
      "public void setOpenDate(String sthOpen)",
      "protected int getSensorRange(glossary.sensors name)",
      "protected int getBurnRatio(glossary.sensors name)",
      "public int getMaxVisibility(Roles rol)",
      "public int getRange(Roles rol)",
      "public int getMaxLevel(Roles r)",
      "public double getBurnRate(Roles rol)",
      "public int getWidth()",
      "public void setWidth(int width)",
      "public int getHeight()",
      "public void setHeight(int height)",
      "public int getMaxflight()",
      "public void setMaxflight(int maxflight)",
      "public boolean isSolved()",
      "public String getSessionAlias()",
      "public void setSessionAlias(String sessionAlias)"
    ]
  },
  "class": {
    "agents": [
      "ADMINMessage",
      "LARVAAdminAgent",
      "LARVABaseTelegram",
      "LARVAEphemeral"
    ],
    "crypto": [
      "AdminCryptor",
      "ProductCoin"
    ],
    "data": [
      "AdminPassport"
    ],
    "database": [
      "DBA2021",
      "DBA2122"
    ],
    "factoryagent": [
      "FactoryAgent"
    ],
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
    ],
    "sessions": [
      "Session"
    ],
    "telegram": [
      "LARVATelegramBot"
    ]
  },
  "format": {
    "agents": {
      "face": "Arial",
      "fontsize": 24,
      "fillcolor": "Chartreuse",
      "color": "black"
    },
    "crypto": {
      "face": "Arial",
      "fontsize": 24,
      "fillcolor": "MediumSpringGreen",
      "color": "black"
    },
    "data": {
      "face": "Arial",
      "fontsize": 24,
      "fillcolor": "Turquoise",
      "color": "black"
    },
    "database": {
      "face": "Arial",
      "fontsize": 24,
      "fillcolor": "CadetBlue",
      "color": "black"
    },
    "factoryagent": {
      "face": "Arial",
      "fontsize": 24,
      "fillcolor": "MediumAquaMarine",
      "color": "black"
    },
    "larva": {
      "face": "Arial",
      "fontsize": 24,
      "fillcolor": "Thistle",
      "color": "black"
    },
    "sessions": {
      "face": "Arial",
      "fontsize": 24,
      "fillcolor": "LightSteelBlue",
      "color": "black"
    },
    "telegram": {
      "face": "Arial",
      "fontsize": 24,
      "fillcolor": "DarkViolet",
      "color": "black"
    },
    "extends": "[arrowhead=onormal,color=black]",
    "owns": "[style=dotted,arrowhead=odiamond,color=blue]"
  }
}