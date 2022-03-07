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
        "LARVAFirstAgent": [
          
        ]
      },
      {
        "Ole": [
          "OleConfig",
          "OleFile",
          "OlePassport",
          "OleQuery",
          "OleTable"
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
        "Cryptor": [
          "AdminCryptor"
        ]
      },
      {
        "LARVAEphemeral": [
          
        ]
      },
      {
        "Agent": [
          "LARVABaseAgent"
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
      },
      {
        "Keygen": [
          
        ]
      },
      {
        "ACLMessage": [
          "ADMINMessage"
        ]
      }
    ],
    "owns": [
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
        "LARVAQueen": [
          
        ]
      },
      {
        "SequenceDiagram": [
          
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
        "LARVABoot": [
          "OleConfig",
          "Logger"
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
        "LARVAPublicTelegram": [
          
        ]
      },
      {
        "LARVAPrivateTelegram": [
          
        ]
      },
      {
        "HWManager": [
          
        ]
      },
      {
        "OleTable": [
          
        ]
      },
      {
        "DrDiagnostic": [
          "OleConfig"
        ]
      },
      {
        "LARVATelegramBot": [
          "LARVAAdminAgent"
        ]
      },
      {
        "Keygen": [
          
        ]
      },
      {
        "IdentityManager": [
          
        ]
      },
      {
        "LARVAFirstAgent": [
          "SequenceDiagram",
          "OleConfig"
        ]
      },
      {
        "JADEBoot": [
          "OleConfig",
          "Logger"
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
        "LARVA": [
          
        ]
      },
      {
        "OleFile": [
          
        ]
      },
      {
        "LARVAAdminAgent": [
          "OleConfig",
          "DBA2122",
          "BehaviourControl",
          "AdminCryptor",
          "Ole",
          "Session"
        ]
      },
      {
        "DBA2122": [
          "Ole",
          "OleTable"
        ]
      },
      {
        "ACLMessageTools": [
          
        ]
      },
      {
        "Internet": [
          
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
        "Palette": [
          
        ]
      },
      {
        "Ontology": [
          
        ]
      },
      {
        "OlePassport": [
          
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
        "OleConfig": [
          
        ]
      },
      {
        "Session": [
          "DBA2122",
          "Logger",
          "Map2DColor",
          "Ole"
        ]
      }
    ]
  },
  "publicmethods": {
    "OleQuery": [
      "OleQuery(Ole o)",
      "OleQuery Pair(String field, Object o)",
      "OleQuery Condition(String field, String comp, Object o)"
    ],
    "Ole": [
      "static Ole Json2Ole(JsonObject jsole)",
      "static JsonObject Ole2PlainJson(Ole odata)",
      "static List<String> allNames(JsonObject jso)",
      "Ole()",
      "Ole(JsonObject jsole)",
      "Ole(String s)",
      "Ole clear()",
      "boolean isOle()",
      "boolean isEmpty()",
      "Ole set(String s)",
      "Ole fromJson(JsonObject jsole)",
      "JsonObject toPlainJson()",
      "String toString(WriterConfig wcon)",
      "String toString()",
      "Ole parse(String s)",
      "boolean checkField(String fieldName)",
      "Ole addField(String fieldName)",
      "Ole setID(String id)",
      "Ole setType(String type)",
      "Ole setDate(String date)",
      "Ole setDescription(String description)",
      "Ole setOle()",
      "String getID()",
      "String getType()",
      "String getDate()",
      "String getDescription()",
      "List<String> getFieldList()",
      "String getFieldType(String field)",
      "String getValueType(JsonValue jsv)",
      "final Ole getOle(String field)",
      "Ole set(String field, boolean value)",
      "Ole set(String field, int value)",
      "Ole set(String field, double value)",
      "Ole set(String field, String value)",
      "Ole set(String field, JsonArray value)",
      "Ole set(String field, Ole value)",
      "boolean isEncrypted()",
      "Ole onEncryption(Cryptor myc)",
      "Ole offEncryption()",
      "Ole loadFile(String fullfilename)",
      "final String getField(String field)",
      "final boolean getBoolean(String field)",
      "final int getInt(String field)",
      "final double getDouble(String field)",
      "final String getString(String field)",
      "final ArrayList getArray(String field)",
      "final Ole setField(String fieldname, String value)",
      "final Ole setField(String fieldname, int value)",
      "final Ole setField(String fieldname, double value)",
      "final Ole setField(String fieldname, boolean value)",
      "final Ole setField(String fieldname, ArrayList<Object> value)",
      "final Ole setField(String fieldname, Ole value)",
      "final Ole addToField(String fieldname, String v)",
      "final Ole addToField(String fieldname, int v)",
      "final Ole addToField(String fieldname, double v)",
      "final Ole addToField(String fieldname, boolean v)",
      "final Ole addToField(String fieldname, Ole v)",
      "Ole setFieldGeneric(String field, Object s)"
    ],
    "GMailer": [
      "void ServiceHandlerNOTIFICATION(ACLMessage msg)",
      "void takeDown()"
    ],
    "Cryptor": [
      "Cryptor(String cs, String k)",
      "void setCryptoKey(String k)",
      "String getCryptoKey()",
      "String getCharSet()",
      "void setCharSet(String s)",
      "String enCrypt(String text)",
      "String deCrypt(String text)",
      "String enCryptAES(String text)",
      "String deCryptAES(String text)",
      "String enCrypt64(String text)",
      "String deCrypt64(String text)"
    ],
    "LARVAEphemeral": [
      "void unTick()",
      "void takeDown()"
    ],
    "Map2DColor": [
      "Map2DColor(int width, int height)",
      "Map2DColor(int width, int height, int level)",
      "Map2DColor(int width, int height, Color c)",
      "Map2DColor loadMapNormalize(String filename) throws IOException",
      "Map2DColor loadMapRaw(String filename) throws IOException",
      "Map2DColor shiftLeft(int pix)",
      "int correctAlphaLevel(int level)",
      "Map2DColor saveMap(String filename) throws IOException",
      "int getWidth()",
      "BufferedImage getMap()",
      "int getHeight()",
      "int getMinHeight()",
      "int getMaxHeight()",
      "int getRawLevel(int x, int y)",
      "int getStepLevel(int x, int y)",
      "Color getColor(int x, int y)",
      "int getStepLevel(double x, double y)",
      "Map2DColor setLevel(int x, int y, int level)",
      "Map2DColor setColor(int x, int y, Color c)",
      "Map2DColor setLevel(double x, double y, int level)",
      "boolean hasMap()"
    ],
    "SentenceBuilder": [
      "SentenceBuilder clear()",
      "SentenceBuilder Op(SQLOP o)",
      "SentenceBuilder Table(String t)",
      "SentenceBuilder Column(String column)",
      "SentenceBuilder Pair(String column, String value)",
      "SentenceBuilder Condition(String column, String comp, String value)",
      "String toString()"
    ],
    "LARVAQueen": [
      "void Execute()",
      "void ServiceHandlerADMIN(ACLMessage msg)",
      "void takeDown()"
    ],
    "SequenceDiagram": [
      "int size()",
      "int getNPlayers()",
      "void addPlayer(String name)",
      "String getPlayer(int i)",
      "int indexPlayer(String name)",
      "void nextLine()",
      "void printPlayers()",
      "String fillField(String base, char fill)",
      "void printEmptyPlayers()",
      "void printDate(Sequence s)",
      "void printContent(Sequence s)",
      "void printRW(Sequence s)",
      "void printIRT(Sequence s)",
      "void printPerformative(Sequence s)",
      "void printArrow(Sequence s)",
      "void getSequenceDiagram(String filename, String agentname)",
      "void addSequence(String sender, String receiver, String content)",
      "void addSequence(ACLMessage msg)",
      "String printSequenceDiagram()"
    ],
    "DataBaser": [
      "void Execute()",
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
    "LARVABoot": [
      "LARVABoot Boot(String host, int port)",
      "LARVABoot Boot()",
      "LARVABoot launchAgent(String name, Class c)",
      "LARVABoot WaitToClose()",
      "LARVABoot ShutDown()",
      "LARVABoot WaitToShutDown()",
      "void Alert(String message)",
      "String inputLine(String message)",
      "String inputSelect(String message, String[] options, String value)",
      "boolean Confirm(String message)",
      "boolean isShutDown()",
      "boolean isEmpty()",
      "JFrame getMyFrame()",
      "JScrollPane getMyPane()"
    ],
    "Logger": [
      "String getLoggerFileName()",
      "Logger setOwner(String name)",
      "Logger setOwnerQualifier(String s)",
      "Logger setLoggerFileName(String fname)",
      "Logger setOutputTo(PrintStream out)",
      "Logger setTextColor(int color)",
      "Logger onTabular()",
      "Logger offTabular()",
      "Logger onOverwrite()",
      "Logger onAppend()",
      "Logger setEcho(boolean e)",
      "Logger onEcho()",
      "Logger offEcho()",
      "boolean isEcho()",
      "JsonObject logMessage(String message)",
      "JsonObject logMessage(JsonObject details)",
      "JsonObject logError(String message)",
      "JsonObject logError(JsonObject details)",
      "JsonObject logException(Exception ex)",
      "void incIndent()",
      "void decIndent()",
      "static String trimString(String original, int max)",
      "String getLastlog()"
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
    "Goku": [
      "void Execute()",
      "void takeDown()"
    ],
    "LARVAPublicTelegram": [
      "void takeDown()",
      "void sayHello()",
      "void sayGoodBye()"
    ],
    "LARVAPrivateTelegram": [
      "void takeDown()",
      "void defineGroup(TelegramChoice c)",
      "void sayHello()",
      "void sayGoodBye()",
      "void shutDownNow(TelegramChoice c)",
      "void reBootNow(TelegramChoice c)",
      "void doResume(TelegramChoice c)",
      "void doExceptions(TelegramChoice c)",
      "void getAllPassports(TelegramChoice c)"
    ],
    "HWManager": [
      "void Execute()",
      "void takeDown()"
    ],
    "OleTable": [
      "OleTable(Ole o)",
      "boolean isEmpty()",
      "OleTable(ResultSet rs)",
      "JsonArray rawRows()",
      "OleTable addRow(Ole o)",
      "Ole getRow(int r)",
      "Ole getRow(String field, int value)",
      "Ole getRow(String field, String value)",
      "ArrayList<Ole> getAllRows()",
      "ArrayList<Ole> getAllRows(String field, String value)",
      "ArrayList<Ole> getAllRows(String field, int value)",
      "OleTable getAllRowsOleTable(String field, String value)",
      "OleTable getAllRowsOleTable(String field, int value)",
      "int size()",
      "String prettyprint()"
    ],
    "DrDiagnostic": [
      "void Execute()",
      "void doLauchQueries(AdminDiagnostic d)",
      "void takeDown()",
      "void ServiceHandlerADMIN(ACLMessage msg)",
      "void PeriodicCheckSetup()"
    ],
    "LARVATelegramBot": [
      "String getBotUsername()",
      "String getBotToken()",
      "void onUpdateReceived(Update update)"
    ],
    "Keygen": [
      "static String getHexaKey()",
      "static String getAlphaNumKey(int length)",
      "static String getWordo(int length)",
      "static String getHexaKey(int length)",
      "Keygen()",
      "Keygen(String input)",
      "Keygen rotateLeft(int n)",
      "Keygen rotateRight(int n)",
      "Keygen lock()",
      "Keygen unlock()",
      "Keygen setOffset(boolean o)",
      "boolean belongs(String word)",
      "Keygen encode(String w) throws Exception",
      "String decode()",
      "Keygen recode(Keygen other)",
      "BigInteger getCanonical()"
    ],
    "IdentityManager": [
      "void Execute()",
      "void takeDown()"
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
    "JADEBoot": [
      "JADEBoot(String[] args)",
      "JADEBoot Boot(String host, int port)",
      "JADEBoot Boot()",
      "JADEBoot Reboot()",
      "JADEBoot launchAgent(String name, Class c)",
      "JADEBoot launchAgentContainer(String containerName, String agentName, Class c)",
      "JADEBoot WaitToClose()",
      "JADEBoot Close()",
      "JADEBoot WaitAndShutDown()",
      "JADEBoot ShutDown()",
      "boolean activateLocks()",
      "boolean isShutDown()",
      "boolean isReboot()",
      "boolean mustWait()",
      "boolean deactivateLocks()"
    ],
    "Mario": [
      "void Execute()",
      "void takeDown()"
    ],
    "AdminPassport": [
      "AdminPassport(Ole o)",
      "Ole loadEncryptedFile(String fullfilename)",
      "int getUserID()",
      "String getCid()",
      "String getAlias()",
      "String getEmail()",
      "String getName()",
      "boolean isEmpty()"
    ],
    "AdminCryptor": [
      "AdminCryptor(String k)",
      "String keyPradoEncode(int pradocode)",
      "int keyPradoDecode(String pradocode)",
      "String enCrypt(String text)",
      "String deCrypt(String text)"
    ],
    "LARVA": [
      
    ],
    "OleFile": [
      "OleFile(Ole o)",
      "OleFile loadFile(String fullfilename)",
      "boolean saveFile(String outputfolder)",
      "String getStringContent()",
      "String getFileName()"
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
    "ACLMessageTools": [
      "static JsonObject getJsonContentACLM(ACLMessage m)",
      "static boolean isJsonString(String s)",
      "static boolean isJsonACLM(ACLMessage m)",
      "static JsonObject toJsonACLM(ACLMessage msg)",
      "static String fancyWriteACLM(ACLMessage original, boolean simple)",
      "static String fancyWriteACLM(ACLMessage original)",
      "static String getDetailsLARVA(ACLMessage msg)",
      "static ACLMessage respondTo(ACLMessage incoming)",
      "static boolean isAnswerTo(ACLMessage incoming, ACLMessage sent)",
      "static boolean isBadRecipient(ACLMessage msg)",
      "static ACLMessage secureACLM(ACLMessage incoming)",
      "static boolean isDashACL(ACLMessage msg)",
      "static ACLMessage cleanDashMark(ACLMessage msg)",
      "static ACLMessage addDashMark(ACLMessage msg)",
      "static AID getMainReceiver(ACLMessage msg)"
    ],
    "Internet": [
      "static String getLocalIPAddress()",
      "static boolean isBehindRouter()"
    ],
    "OleDataBase": [
      "boolean defineConnection(String host, int port, String database, String user, String password)",
      "boolean openConnection()",
      "String getURL()",
      "final void closeConnection()",
      "void emergencyClose()",
      "boolean isOpen()",
      "boolean isError()",
      "boolean canContinue()",
      "void flushError()",
      "void validationQuery()",
      "void startCommit() throws SQLException",
      "void endCommit() throws SQLException",
      "void rollBack()",
      "void openTransaction()",
      "void closeTransaction()",
      "OleTable DBObjectQuery(String table, OleQuery oq)",
      "boolean DBObjectDelete(String table, OleQuery oq)",
      "boolean DBObjectUpdate(String table, OleQuery find, OleQuery update)",
      "boolean DBObjectUpdateUnique(String table, OleQuery find, OleQuery update)",
      "OleTable DBquery(String sentence)",
      "boolean DBupdate(String sentence)",
      "boolean DBinsert(String sentence)",
      "boolean DBdelete(String sentence)",
      "boolean isEmpty()",
      "void loadSchema()",
      "ArrayList<String> getTableList()",
      "ArrayList<String> getColumnList(String tablename)",
      "String getColumnType(String tablename, String columname)",
      "boolean getORM()",
      "of.println(\" class \"+this._database+\" \");",
      "of.println(\" OleDataBase db;\");",
      "of.println(\" OleTable \"+table+\"GetRow(OleQuery oq) \");",
      "of.println(\" OleTable \"+table+\"GetRow(String field, String value) \");",
      "String[] errorLog()",
      "void reportException(Exception Ex)",
      "void reportError(String which)",
      "String defReportType()",
      "String[] defReportableObjectList()",
      "String reportObjectStatus(String objectid)"
    ],
    "Palette": [
      "Palette()",
      "int size()",
      "Palette addWayPoint(int perc, Color c)",
      "Palette fillWayPoints(int nlevels)",
      "Palette intoTerrain(int nlevels)",
      "Palette intoBW(int nlevels)",
      "Palette intoBWInv(int nlevels)",
      "Color getColor(int level)",
      "int getLevel(Color c)",
      "Palette intoThermal(int nlevels)",
      "Color inverse(int level)",
      "String toString()",
      "Palette fromString(String spalette)",
      "WayPoint(int p, Color c)"
    ],
    "Ontology": [
      "Ontology add(String type, String subtype)",
      "boolean isType(String c)",
      "String getRootType()",
      "String getType(String c)",
      "boolean isSubTypeOf(String subtype, String type)",
      "boolean matchTypes(String first, String second)",
      "JsonObject toJson()",
      "String toString()"
    ],
    "OlePassport": [
      "OlePassport(Ole o)"
    ],
    "ADMINMessage": [
      "ADMINMessage(LARVAAdminAgent sender)",
      "void setJsonContent(JsonObject jso)"
    ],
    "BehaviourControl": [
      "ArrayList<String> getAllBehaviourNames()",
      "Behaviour getBehaviour(String name)",
      "String registerBehaviour(Behaviour b, String name, String description)",
      "String unregisterBehaviour(Behaviour b)",
      "String unregisterBehaviour(String name)",
      "int size()",
      "boolean isEmpty()",
      "long getLatency(String behaviourname)",
      "boolean isOK(String behaviourname)",
      "void startBehaviour(Behaviour b)",
      "void endBehaviour(Behaviour b)",
      "String defReportType()",
      "String[] defReportableObjectList()",
      "String reportObjectStatus(String objectid)"
    ],
    "SendGMailSMTP": [
      "SendGMailSMTP sendGMail(String receiver, String subject, String body) throws AddressException, MessagingException",
      "SendGMailSMTP sendGMail(String receiver, String subject, String body, String filename) throws AddressException, MessagingException, IOException"
    ],
    "OleConfig": [
      "OleConfig(Ole o)",
      "Ole getProperties()",
      "Ole getProperties(String sfield)",
      "Ole getOptions()",
      "int numTabs()",
      "List<String> getAllTabNames()",
      "Ole getTab(String stab)",
      "List<String> getAllTabFields(String stab)"
    ],
    "Session": [
      "Session(DBA2122 db)",
      "String open()",
      "void close()",
      "final Session clear()",
      "boolean isEmpty()",
      "Ole toOle()",
      "Session fromOle(Ole o)",
      "Session setOwner(String agentName)",
      "Session addGuest(String agentName)",
      "World getWorld()",
      "void setWorld(World world)",
      "Session setContext(String problemName)",
      "void setDatabase(DBA2122 database)",
      "void setUserID(int userID)",
      "void setProblemID(int problemID)",
      "void setGroupID(int groupID)",
      "void setAssignmentID(int assignmentID)",
      "void setAgentID(int agentID)",
      "void setIsIndividual(boolean isIndividual)",
      "void setUserName(String userName)",
      "void setAgentName(String agentName)",
      "void setProblemName(String problemName)",
      "void setGroupName(String groupName)",
      "void setSessionID(String sessionID)",
      "void setAssignmentName(String assignmentName)",
      "void setControllerName(String controllerName)",
      "void setProblemMilestones(OleSet problemMilestones)",
      "void setSessionMilestones(OleSet sessionMilestones)",
      "void setLastAction(String lastAction)",
      "void setSessionLogger(Logger sessionLogger)",
      "DBA2122 getDatabase()",
      "int getUserID()",
      "int getProblemID()",
      "int getGroupID()",
      "int getAssignmentID()",
      "int getAgentID()",
      "boolean getIsIndividual()",
      "String getUserName()",
      "String getAgentName()",
      "String getProblemName()",
      "String getGroupName()",
      "String getSessionID()",
      "String getAssignmentName()",
      "String getControllerName()",
      "OleSet getProblemMilestones()",
      "OleSet getSessionMilestones()",
      "String getLastAction()",
      "Logger getSessionLogger()",
      "ArrayList<Integer> getFellowsID()",
      "String getContainerName()",
      "void setContainerName(String containerName)",
      "OleSet getSessionMilestonesMissing()",
      "void setSessionMilestonesMissing(OleSet sessionMilestonesMissing)",
      "OleSet getAchievedMilestones()",
      "void setAchievedMilestones(OleSet achievedMilestones)",
      "Map2DColor getMap()",
      "void setMap(Map2DColor map)",
      "liveBot registerAgent(String name, Roles rol, int basex, int basey, OleSet attachments)",
      "liveBot findAgent(String name)",
      "void addTrace(String record)",
      "boolean execAgent(liveBot agent, String action)",
      "void checkStatus(liveBot agent)",
      "String isGoal(liveBot agent)",
      "JsonObject getGoals()",
      "JsonObject readPerceptions(liveBot agent)",
      "JsonObject getPerceptions(liveBot agent)",
      "int getNumPayload()",
      "int getNumSteps()",
      "int getEnergyBurnt()",
      "boolean hasDistances()",
      "int getElapsedTime()",
      "String getOpenDate()",
      "void setOpenDate(String sthOpen)",
      "int getMaxVisibility(Roles rol)",
      "int getRange(Roles rol)",
      "int getMaxLevel(Roles r)",
      "double getBurnRate(Roles rol)",
      "int getWidth()",
      "void setWidth(int width)",
      "int getHeight()",
      "void setHeight(int height)",
      "int getMaxflight()",
      "void setMaxflight(int maxflight)",
      "boolean isSolved()",
      "String getSessionAlias()",
      "void setSessionAlias(String sessionAlias)"
    ]
  },
  "protectedmethods": {
    "OleQuery": [
      
    ],
    "Ole": [
      "static JsonValue Ole2JsonValue(JsonValue jsobject)",
      "JsonObject meta()",
      "void Init()",
      "Ole fromPlainJson(JsonObject jsole)",
      "Ole fromFullJson(JsonObject jsole)"
    ],
    "GMailer": [
      "void sendGmail(String receiver, String subject, String body)",
      "void sendGmail(String receiver, String subject, String body, String filename)"
    ],
    "Cryptor": [
      
    ],
    "LARVAEphemeral": [
      "void onTick()"
    ],
    "Map2DColor": [
      "Map2DColor normalize()",
      "Color applyAlphaLevel(Color c)"
    ],
    "SentenceBuilder": [
      
    ],
    "LARVAQueen": [
      "String doProgressBar(int n, int total, int length, String done, String undone)"
    ],
    "SequenceDiagram": [
      
    ],
    "DataBaser": [
      
    ],
    "LARVABaseTelegram": [
      "void processTelegramCallBack(long cid, Update u)",
      "void processIncomingTelegram(long cid, Update u)",
      "String getSubscriptions(long cid)",
      "void euroVote(TelegramChoice c)",
      "void selectGroup(TelegramChoice c)",
      "void toggleNotification(TelegramChoice c)",
      "void processTelegramCommand(long cid, Update u)",
      "void processIncomingACLM(ACLMessage aclu)",
      "abstract String getBotName();",
      "abstract String getBotToken();",
      "void startTelegram()",
      "void endTelegram()",
      "void sendTelegram(long cid, String what)",
      "final void sendTelegram(long cid, String what, TelegramMenu menu)",
      "final void sendTelegramPhoto(long cid, String what, String filename, TelegramMenu menu)",
      "void doInformOK(long cid, String what)",
      "void doInformERROR(long cid, String what)",
      "void doCleanHelloWorld(TelegramChoice c)",
      "void doSubscribe(TelegramChoice c)",
      "void doCancel(TelegramChoice c)",
      "void doBannedAgents(TelegramChoice c)",
      "void doGetPassport(TelegramChoice c)",
      "void doAnalytics(TelegramChoice c)",
      "String doAnalyticsClass(TelegramChoice c)",
      "String doAnalyticsMe(TelegramChoice c)",
      "String doAnalyticsSummary(int userID)",
      "String doShortAnalyticsSummary(int userID)",
      "String doAnalyticsProblem(TelegramChoice c)",
      "String doAnalyticsProblemUser(TelegramChoice c)",
      "void doHelp(TelegramChoice c)",
      "String showMilestone(String milestoneID)",
      "String showProblem(String problemName)",
      "String showAssignment(String assignmentName)",
      "String showAssignmentSummary(String assignmentName)",
      "String showAllAssignments()",
      "void checkAgentDiagnostic() throws Exception",
      "void doDiagnoseLARVA(long cid, String command)",
      "void doCheckConnection(TelegramChoice c)",
      "void doCheckStatus(TelegramChoice c)",
      "void doCheckServices(TelegramChoice c)",
      "void doCheckReport(TelegramChoice c)",
      "boolean storePassport(long cid, Update u)",
      "String under(String text)",
      "String bold(String text)",
      "String italic(String text)",
      "String mono(String text)",
      "String tab()",
      "void TelegramException(long cid, String what, Exception ex)",
      "boolean isTelegramException()",
      "int getExceptions()",
      "void addException()",
      "void resetException()",
      "int limitException()",
      "int getTimeOutException()",
      "boolean cancelException()",
      "boolean checkExceptions(String what)"
    ],
    "LARVABoot": [
      "void initGUI()",
      "void refreshGUI()",
      "LARVABoot doCompleted(String task)",
      "boolean isCompleted(String task)",
      "LARVABoot processArguments()",
      "LARVABoot Configure()",
      "LARVABoot setupJadeConnection(String host, int port)",
      "LARVABoot setupMicroJadeConnection(String host, int port)",
      "LARVABoot selectConnection(String host, int port)",
      "LARVABoot selectConnection()",
      "LARVABoot Progress()",
      "void Info(String s)",
      "void Error(String s)",
      "void Exception(Exception ex)",
      "LARVABoot Close()",
      "void turnOff(ContainerController container)",
      "void doSwingLater(Runnable what)",
      "void doSwingWait(Runnable what)",
      "void jadebootListener(ActionEvent e)",
      "boolean isJade()",
      "boolean isMicroBoot()",
      "void Abort(String s)",
      "void Exit()",
      "boolean isBehindRouter()",
      "JTextArea getMessages()",
      "boolean isDebug()",
      "void setDebug(boolean _debug)",
      "String clearMarkDowns(String original)"
    ],
    "Logger": [
      "boolean initRecord(String filename)",
      "JsonObject addRecord(JsonObject o)",
      "String formatOutput(String s)",
      "void Output(String s)",
      "void Error(String s)"
    ],
    "LARVABaseAgent": [
      "void Error(String message)",
      "void Info(String message)",
      "void Alert(String message)",
      "boolean Confirm(String message)",
      "String inputLine(String message)",
      "void BehaviourDefaultSetup()"
    ],
    "Goku": [
      
    ],
    "LARVAPublicTelegram": [
      "String getBotName()",
      "String getBotToken()"
    ],
    "LARVAPrivateTelegram": [
      "void doShowStudents(TelegramChoice c)",
      "String getBotName()",
      "String getBotToken()",
      "void processIncomingTelegram(long cid, Update u)",
      "void doBroadcast(TelegramChoice c)",
      "void processTelegramCommand(long cid, Update u)"
    ],
    "HWManager": [
      
    ],
    "OleTable": [
      
    ],
    "DrDiagnostic": [
      "void onTick()",
      "void findRoles()"
    ],
    "LARVATelegramBot": [
      
    ],
    "Keygen": [
      
    ],
    "IdentityManager": [
      "void onTick()",
      "void doSubscribe(ACLMessage msg)",
      "void doCancel(ACLMessage msg)",
      "void purgeAgents()"
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
    "JADEBoot": [
      "void initBoot(String[] args)",
      "JADEBoot Progress()",
      "JADEBoot doCompleted(String task)",
      "boolean isCompleted(String task)",
      "JADEBoot processArguments()",
      "JADEBoot Configure()",
      "JADEBoot setupJadeConnection(String host, int port)",
      "JADEBoot setupMicroJadeConnection(String host, int port)",
      "JADEBoot selectConnection(String host, int port)",
      "JADEBoot selectConnection()",
      "void turnOff(ContainerController container)",
      "boolean isJade()",
      "boolean isMicroBoot()",
      "void Info(String s)",
      "void Error(String s)",
      "void Exception(Exception ex)",
      "void Abort(String s)",
      "void Exit()",
      "boolean isBehindRouter()"
    ],
    "Mario": [
      
    ],
    "AdminPassport": [
      
    ],
    "AdminCryptor": [
      
    ],
    "LARVA": [
      
    ],
    "OleFile": [
      
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
      "void onTick()",
      "void onTick()",
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
    ],
    "DBA2122": [
      
    ],
    "ACLMessageTools": [
      
    ],
    "Internet": [
      
    ],
    "OleDataBase": [
      "SentenceBuilder sentence(SQLOP o)",
      "OleTable DBSBquery(SentenceBuilder s)",
      "boolean DBSBupdate(SentenceBuilder s)",
      "boolean DBSBinsert(SentenceBuilder s)",
      "boolean DBSBdelete(SentenceBuilder s)",
      "ResultSet getResult()",
      "OleTable getOleTable()"
    ],
    "Palette": [
      "void debugPing(String message)",
      "Color getBWColor(int value, int minvalue, int maxvalue)  // Value [0,1], getcolor ANSICOLOR",
      "Color getThermalColor(int value, int minvalue, int maxvalue)  // Value [0,1], getcolor ANSICOLOR",
      "Color getTerrainColor(int value, int minvalue, int maxvalue)  // Value [0,1], getcolor ANSICOLOR"
    ],
    "Ontology": [
      
    ],
    "OlePassport": [
      
    ],
    "ADMINMessage": [
      "final void init(LARVAAdminAgent sender)"
    ],
    "BehaviourControl": [
      
    ],
    "SendGMailSMTP": [
      "PasswordAuthentication getPasswordAuthentication()",
      "PasswordAuthentication getPasswordAuthentication()"
    ],
    "OleConfig": [
      "List<String> getTabList()"
    ],
    "Session": [
      "int getSensorRange(glossary.sensors name)",
      "int getBurnRatio(glossary.sensors name)"
    ]
  },
  "class": {
    "extern": [
      "ACLMessage",
      "Agent"
    ],
    "agents": [
      "ADMINMessage",
      "BehaviourControl",
      "LARVAAdminAgent",
      "LARVABaseAgent",
      "LARVABaseTelegram",
      "LARVAEphemeral",
      "LARVAFirstAgent"
    ],
    "crypto": [
      "AdminCryptor",
      "Cryptor",
      "Keygen"
    ],
    "data": [
      "AdminPassport",
      "Ole",
      "OleConfig",
      "OleFile",
      "OlePassport",
      "OleQuery",
      "OleTable"
    ],
    "database": [
      "DBA2122",
      "OleDataBase",
      "SentenceBuilder"
    ],
    "disk": [
      "Logger"
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
      "LARVA",
      "LARVAPrivateTelegram",
      "LARVAPublicTelegram",
      "LARVAQueen",
      "Mario"
    ],
    "sessions": [
      "Session"
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
      "fontsize": 24,
      "fillcolor": "white",
      "color": "black"
    },
    "crypto": {
      "face": "Courier New",
      "fontsize": 24,
      "fillcolor": "white",
      "color": "black"
    },
    "data": {
      "face": "Courier New",
      "fontsize": 24,
      "fillcolor": "white",
      "color": "black"
    },
    "database": {
      "face": "Courier New",
      "fontsize": 24,
      "fillcolor": "white",
      "color": "black"
    },
    "disk": {
      "face": "Courier New",
      "fontsize": 24,
      "fillcolor": "white",
      "color": "black"
    },
    "factoryagent": {
      "face": "Courier New",
      "fontsize": 24,
      "fillcolor": "white",
      "color": "black"
    },
    "larva": {
      "face": "Courier New",
      "fontsize": 24,
      "fillcolor": "white",
      "color": "black"
    },
    "sessions": {
      "face": "Courier New",
      "fontsize": 24,
      "fillcolor": "white",
      "color": "black"
    },
    "telegram": {
      "face": "Courier New",
      "fontsize": 24,
      "fillcolor": "white",
      "color": "black"
    },
    "world": {
      "face": "Courier New",
      "fontsize": 24,
      "fillcolor": "white",
      "color": "black"
    },
    "extern": {
      "face": "Courier New",
      "fontsize": 24,
      "fillcolor": "gray",
      "color": "black"
    },
    "extends": "[arrowhead=onormal, penwidth=2, color=black]",
    "owns": "[style=dotted,arrowhead=odiamond, penwidth=2,color=blue]"
  }
}