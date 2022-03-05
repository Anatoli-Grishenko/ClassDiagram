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
  "methods": {
    "Entity": [
      "String getName()",
      "String getId()",
      "final Entity setPosition(Point p)",
      "Point getPosition()",
      "final Entity setSize(Point p)",
      "Point getSize()",
      "int getDimension()",
      "Entity setOrientation(int orientation)",
      "int getOrientation()",
      "Vector getVector()",
      "Entity move(Vector shift)",
      "Entity moveForward(int units)",
      "Entity moveUp(int units)",
      "Entity moveDown(int units)",
      "static int rotateLeft(int sdirection)",
      "static int rotateRight(int sdirection)",
      "static int Opposite(int sdirection)",
      "Entity rotateLeft()",
      "Entity rotateRight()",
      "boolean contains(Point p)"
    ],
    "OleQuery": [
      "OleQuery(Ole o)",
      "OleQuery Pair(String field, Object o)",
      "OleQuery Condition(String field, String comp, Object o)"
    ],
    "Ole": [
      "static Ole Json2Ole(JsonObject jsole)",
      "static JsonValue Ole2JsonValue(JsonValue jsobject)",
      "static JsonObject Ole2PlainJson(Ole odata)",
      "static List<String> allNames(JsonObject jso)",
      "Ole()",
      "Ole(JsonObject jsole)",
      "Ole(String s)",
      "JsonObject meta()",
      "Ole clear()",
      "void Init()",
      "boolean isOle()",
      "boolean isEmpty()",
      "Ole set(String s)",
      "Ole fromJson(JsonObject jsole)",
      "Ole fromPlainJson(JsonObject jsole)",
      "Ole fromFullJson(JsonObject jsole)",
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
      "void sendGmail(String receiver, String subject, String body)",
      "void sendGmail(String receiver, String subject, String body, String filename)",
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
      "void updateXUIAgent(String agentname)",
      "void updateXUIGoals()",
      "void processRegister(ACLMessage incoming)"
    ],
    "MyPopup": [
      "void paintComponent(Graphics g)",
      "void addText(String t)",
      "Color getBg()",
      "void setBg(Color bg)",
      "Color getFg()",
      "void setFg(Color fg)"
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
      "void onTick()",
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
      "Map2DColor normalize()",
      "Color applyAlphaLevel(Color c)",
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
    "Vector": [
      "Vector(Point s, Point t)",
      "Vector update()",
      "Vector setSource(Point s)",
      "Vector setTarget(Point t)",
      "Point getSource()",
      "Point getTarget()",
      "Vector canonical()",
      "double modulo()",
      "double moduloX()",
      "double moduloY()",
      "double moduloZ()",
      "double angleXYTo(Vector other)",
      "double angleXYTo(Point target)",
      "double scalarProductTo(Vector other)",
      "Vector scalar(double f)",
      "String toString()",
      "JsonArray toJson()",
      "Vector fromJson(JsonArray p)",
      "Vector to2D()",
      "Vector clone()"
    ],
    "Thing": [
      "Thing(String name, World w)",
      "Thing setType(String c)",
      "String getType()",
      "World getWorld()",
      "Thing setSurface(Map2DColor cartography)",
      "Map2DColor getSurface()",
      "int getEnergy()",
      "int getOnTarget()",
      "int getAlive()",
      "int getPayload()",
      "Thing placeAtSurface(Point p)",
      "Thing addSensor(Perceptor p)",
      "JsonObject readPerceptions()",
      "int sizePerceptions()",
      "JsonObject toJson()",
      "String toString()"
    ],
    "LARVAQueen": [
      "String doProgressBar(int n, int total, int length, String done, String undone)",
      "void Execute()",
      "void ServiceHandlerADMIN(ACLMessage msg)",
      "void takeDown()"
    ],
    "LARVADash": [
      "boolean preProcessACLM(ACLMessage msg)",
      "boolean setWorldMap(String olefile, int maxlevel, String spalette)",
      "void feedPerception(String perception)",
      "void feedPerceptionLocal(String perception)",
      "void whenExecute(Consumer<String> executor)",
      "void goSimulator()",
      "void goReal()",
      "void initGUI()",
      "void windowClosing(WindowEvent e)",
      "void preLayout()",
      "void fullLayout()",
      "void initLayout()",
      "void DashListener(ActionEvent e)",
      "void showTerrain(Graphics2D g, int px, int py)",
      "void showMyStatus(Graphics2D g)",
      "void CompactLayout(Graphics2D g)",
      "void DashBoardLayout(Graphics2D g)",
      "void addAction(String action)",
      "void addStatus(String status)",
      "boolean hasSensor(String sensor)",
      "void refresh()",
      "void showName(Graphics2D g, int px, int py)",
      "void showAlive(Graphics2D g, int px, int py)",
      "void showOnTarget(Graphics2D g, int px, int py)",
      "void showEnergy(Graphics2D g, int px, int py)",
      "void showEnergyPB(Graphics2D g, int px, int py, int w)",
      "void showAngularPB(Graphics2D g, int px, int py, int w)",
      "void showCompassPB(Graphics2D g, int px, int py, int w)",
      "void showCompass(Graphics2D g, int px, int py)",
      "void showAltimeter(Graphics2D g, int px, int py)",
      "void showAltimeterPB(Graphics2D g, int px, int py, int w)",
      "void showNSteps(Graphics2D g, int px, int py)",
      "void showAngular(Graphics2D g, int px, int py)",
      "void showDistance(Graphics2D g, int px, int py)",
      "void showDistancePB(Graphics2D g, int px, int py, int w)",
      "void showPayLoad(Graphics2D g, int px, int py)",
      "void showGPS(Graphics2D g, int px, int py)",
      "void showTimer(Graphics2D g, int px, int py)",
      "void showMiniVisual(Graphics2D g, int px, int py)",
      "void showMiniLidar(Graphics2D g, int px, int py)",
      "void showMiniThermal(Graphics2D g, int px, int py)",
      "double[] fromJsonArray(JsonArray jsa)",
      "boolean isTooHigh(int level)",
      "boolean isNullread(int level)",
      "int getNsteps()",
      "int getTimerSecs()",
      "int getMaxlevel()",
      "String getStatus()",
      "boolean getAlive()",
      "boolean getOnTarget()",
      "double[] getGPS()",
      "int getPayload()",
      "int getEnergyBurnt()",
      "int getCompass()",
      "int getAltitude()",
      "double getDistance()",
      "double getDistance(Point p)",
      "double getAngular()",
      "double getAngular(Point p)",
      "double getEnergy()",
      "int[][] getVisual()",
      "int[][] getLidar()",
      "int[][] getThermal()",
      "int getMapLevel(int x, int y)",
      "String getName()",
      "String[] getCargo()",
      "Palette getPalette(String name)",
      "String doReadPerceptions()",
      "void doExecute(String action)",
      "boolean isOpen()",
      "void disableDashBoard()",
      "boolean isActivated()",
      "void setActivated(boolean activated)",
      "String getMyMission()",
      "void setMyMission(String myMission)",
      "String printSensors()",
      "int getWidth()",
      "int getHeight()"
    ],
    "Compass": [
      "static String getName(direction d)",
      "static int getAngle(direction d)",
      "static Vector getVector(direction d)"
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
    "FactoryAgent": [
      "ArrayList<String> getAllAgentNames()",
      "ArrayList<String> getAllContainerNames()",
      "String getMainContainerName()",
      "boolean createContainer(String containername)",
      "boolean birthAgent(String agentname, Class c, String parameters[])",
      "boolean birthAgent(String agentname, Class c, String parameters[], String containername)",
      "boolean killAgent(String agentname)",
      "boolean killContainer(String containername)",
      "boolean killAllAgents()",
      "boolean killAllContainers()",
      "String purgeAgents()",
      "void killAllExit()",
      "String defReportType()",
      "String[] defReportableObjectList()",
      "String reportObjectStatus(String objectid)"
    ],
    "MyMapPalPane": [
      "void mouseWheelMoved(MouseWheelEvent e)",
      "void mouseClicked(MouseEvent e)",
      "void mousePressed(MouseEvent e)",
      "void mouseReleased(MouseEvent e)",
      "void mouseEntered(MouseEvent e)",
      "void mouseExited(MouseEvent e)",
      "void setPreferredSize(Dimension d)",
      "void addRuler()",
      "void addTrail()",
      "void addShadow(int s)",
      "void addHotSpot()",
      "Graphics2D getMapGraphics()",
      "void setImage(ImageIcon i, int x, int y)",
      "void setTrail(int x, int y, int z)",
      "void setBounds(int x, int y, int w, int h)",
      "void defLayout()",
      "MyMapPalPane setMap(Color m[][], Palette p)",
      "void paintPalette(Graphics2D g)",
      "void paintMap(Graphics2D g)",
      "void paintTrail(Graphics2D g)",
      "void paintTrailPos(Graphics2D g, int pos)",
      "void paintPoint(Graphics2D g, Point p, Color c)",
      "void framePoint(Graphics2D g, Point p, Color c)",
      "void hideTrailPos(Graphics2D g, int pos)",
      "void hidePoint(Graphics2D g, Point p)",
      "void preDecorateMap(Graphics2D g)",
      "void postDecorateMap(Graphics2D g)",
      "void setColor(int x, int y, Color c)",
      "Color getColor(int x, int y)",
      "Color[][] getMap()",
      "int getMapWidth()",
      "int getMapHeight()"
    ],
    "ProblemManager": [
      "void Execute()",
      "void processInternal(ACLMessage incoming)",
      "void processRequests(ACLMessage incoming)",
      "void doOpenProblem(ACLMessage incoming)",
      "void doCancelProblem(ACLMessage incoming)",
      "boolean doOpenSession(ACLMessage incoming)",
      "void doForcedCloseSession(String sessionID)",
      "boolean doCloseSession(String sessionKey)",
      "void purgeSessions()",
      "void takeDown()"
    ],
    "TelegramMenuOption": [
      "TelegramMenuOption(Consumer <TelegramChoice> handler)",
      "TelegramMenuOption()",
      "boolean isExit()"
    ],
    "TimeHandler": [
      "TimeHandler()",
      "TimeHandler(long l)",
      "TimeHandler plusSeconds(long s)",
      "TimeHandler minusSeconds(long s)",
      "TimeHandler(String stime)",
      "boolean isAfterEq(TimeHandler t)",
      "boolean isBeforeEq(TimeHandler t)",
      "boolean isEqual(TimeHandler t)",
      "long elapsedTimeSecs(TimeHandler other)",
      "long elapsedTimeSecs()",
      "String toString()",
      "String toString(TimeHandler other)"
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
      "void ServiceHandlerNOTIFICATION(ACLMessage msg)",
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
      "void ShowMyGroup(TelegramChoice c)",
      "void ShowGroup(TelegramChoice c)",
      "void ShowOldGroup(TelegramChoice c)",
      "void doShowAgents(TelegramChoice c)",
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
      "String showProgressDetail(OleSet total, OleSet done)",
      "String under(String text)",
      "String bold(String text)",
      "String italic(String text)",
      "String mono(String text)",
      "String tab()",
      "boolean amILocal()",
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
    "MyDrawPane": [
      "void setPainter(Consumer<Graphics2D> function)",
      "void paintComponent(Graphics g)"
    ],
    "LARVABoot": [
      "void initGUI()",
      "void refreshGUI()",
      "LARVABoot Boot(String host, int port)",
      "LARVABoot Boot()",
      "LARVABoot doCompleted(String task)",
      "boolean isCompleted(String task)",
      "LARVABoot processArguments()",
      "LARVABoot Configure()",
      "LARVABoot setupJadeConnection(String host, int port)",
      "LARVABoot setupMicroJadeConnection(String host, int port)",
      "LARVABoot selectConnection(String host, int port)",
      "LARVABoot selectConnection()",
      "LARVABoot launchAgent(String name, Class c)",
      "LARVABoot Progress()",
      "void Info(String s)",
      "void Error(String s)",
      "void Exception(Exception ex)",
      "LARVABoot WaitToClose()",
      "LARVABoot Close()",
      "LARVABoot ShutDown()",
      "LARVABoot WaitToShutDown()",
      "void turnOff(ContainerController container)",
      "void doSwingLater(Runnable what)",
      "void doSwingWait(Runnable what)",
      "void jadebootListener(ActionEvent e)",
      "void Alert(String message)",
      "String inputLine(String message)",
      "String inputSelect(String message, String[] options, String value)",
      "boolean Confirm(String message)",
      "boolean isJade()",
      "boolean isMicroBoot()",
      "boolean isShutDown()",
      "boolean isEmpty()",
      "void Abort(String s)",
      "void Exit()",
      "boolean isBehindRouter()",
      "JFrame getMyFrame()",
      "JScrollPane getMyPane()",
      "JTextArea getMessages()",
      "boolean isDebug()",
      "void setDebug(boolean _debug)",
      "String clearMarkDowns(String original)"
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
      "boolean initRecord(String filename)",
      "JsonObject addRecord(JsonObject o)",
      "JsonObject logMessage(String message)",
      "JsonObject logMessage(JsonObject details)",
      "JsonObject logError(String message)",
      "JsonObject logError(JsonObject details)",
      "JsonObject logException(Exception ex)",
      "String formatOutput(String s)",
      "void incIndent()",
      "void decIndent()",
      "void Output(String s)",
      "void Error(String s)",
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
      "void Error(String message)",
      "void Info(String message)",
      "void Alert(String message)",
      "boolean Confirm(String message)",
      "String inputLine(String message)",
      "void BehaviourDefaultSetup()",
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
    "LARVAAirTrafficControlTiles": [
      "void setTitle(String title)",
      "String getTitle()",
      "void clear()",
      "boolean setWorldMap(String olefile, int maxlevel, String spalette)",
      "void feedGoals(String goals)",
      "void feedPerception(String perception)",
      "void initGUI()",
      "void windowClosing(WindowEvent e)",
      "void DashListener(ActionEvent e)",
      "void refresh()",
      "void disableDashBoard()",
      "boolean isActivated()",
      "void setActivated(boolean activated)",
      "Palette getPalette(String name)",
      "HashMap<String, LARVAEmbeddedDash> getDashboards()",
      "int getWidth()",
      "int getHeight()"
    ],
    "LARVAPublicTelegram": [
      "void takeDown()",
      "String getBotName()",
      "String getBotToken()",
      "void sayHello()",
      "void sayGoodBye()"
    ],
    "LARVAPrivateTelegram": [
      "void takeDown()",
      "void doShowStudents(TelegramChoice c)",
      "void defineGroup(TelegramChoice c)",
      "String getBotName()",
      "String getBotToken()",
      "void sayHello()",
      "void sayGoodBye()",
      "void shutDownNow(TelegramChoice c)",
      "void reBootNow(TelegramChoice c)",
      "void doResume(TelegramChoice c)",
      "void processIncomingTelegram(long cid, Update u)",
      "void doExceptions(TelegramChoice c)",
      "void getAllPassports(TelegramChoice c)",
      "void doBroadcast(TelegramChoice c)",
      "void processTelegramCommand(long cid, Update u)"
    ],
    "SonGoanda": [
      "void Execute()",
      "void takeDown()"
    ],
    "HWManager": [
      "void Execute()",
      "void takeDown()"
    ],
    "Menu": [
      "Menu(Console owner)",
      "void Init()",
      "int size()",
      "Menu addOption(String option)",
      "Menu addTitle(String t)",
      "int chooseOption()",
      "void showMenu()",
      "void showFancyMenu()"
    ],
    "TelegramChat": [
      "void resetChat()",
      "boolean isValidChat()",
      "void setUserID(int userID)",
      "void setGroupID(int groupID)",
      "void setCourseID(int courseID)",
      "void setUsername(String username)",
      "void setGroupname(String groupname)",
      "void setTeacher(boolean teacher)",
      "void setSubscribed(boolean subscribed)",
      "boolean isTeacher()",
      "boolean isSubscribed()",
      "void setPendingUpdates(ArrayList<Update> pendingUpdates)",
      "int getUserID()",
      "int getGroupID()",
      "int getCourseID()",
      "String getUsername()",
      "String getGroupname()",
      "ArrayList<Update> getPendingUpdates()"
    ],
    "DBAAPI": [
      
    ],
    "JDrawPane": [
      "void paintComponent(Graphics g)"
    ],
    "MyPlainButton": [
      "MyPlainButton(String name, String image, LARVADialog myFrame)",
      "MyPlainButton off()",
      "MyPlainButton on()"
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
      "void PeriodicCheckSetup()",
      "void onTick()",
      "void findRoles()"
    ],
    "LARVATelegramBot": [
      "String getBotUsername()",
      "String getBotToken()",
      "void onUpdateReceived(Update update)"
    ],
    "TelegramChoice": [
      
    ],
    "TelegramMenu": [
      "TelegramMenu setDescription(String d)",
      "TelegramMenu setColumns(int nc)",
      "TelegramMenu addButton(String text)",
      "String getName()",
      "TelegramMenu setName(String name)",
      "String getDescription()",
      "ReplyKeyboardMarkup getKeyboard()"
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
    "Event": [
      
    ],
    "LARVACompactDash": [
      "boolean preProcessACLM(ACLMessage msg)",
      "void whenExecute(Consumer<String> executor)",
      "void goSimulator()",
      "void goReal()",
      "void initGUI()",
      "void windowClosing(WindowEvent e)",
      "void preLayout()",
      "void fullLayout()",
      "void initLayout()",
      "void DashListener(ActionEvent e)",
      "void showTerrain(Graphics2D g, int px, int py)",
      "void showMyStatus(Graphics2D g)",
      "void CompactLayout(Graphics2D g)",
      "void DashBoardLayout(Graphics2D g)"
    ],
    "LARVAEmbeddedDash": [
      "boolean setWorldMap(String olefile, int maxlevel, String spalette)",
      "void feedPerception(String perception)",
      "void feedPerceptionLocal(String perception)",
      "void initGUI()",
      "void showMyStatus(Graphics2D g)",
      "void DashBoardLayout(Graphics2D g)",
      "void refresh()",
      "void showName(Graphics2D g, int px, int py)",
      "void showCargo(Graphics2D g, int px, int py)",
      "void showAlive(Graphics2D g, int px, int py)",
      "void showOnTarget(Graphics2D g, int px, int py)",
      "void showEnergy(Graphics2D g, int px, int py)",
      "void showEnergyPB(Graphics2D g, int px, int py, int w)",
      "void showAngularPB(Graphics2D g, int px, int py, int w)",
      "void showCompassPB(Graphics2D g, int px, int py, int w)",
      "void showCompass(Graphics2D g, int px, int py)",
      "void showAltimeter(Graphics2D g, int px, int py)",
      "void showAltimeterPB(Graphics2D g, int px, int py, int w)",
      "void showNSteps(Graphics2D g, int px, int py)",
      "void showAngular(Graphics2D g, int px, int py)",
      "void showDistance(Graphics2D g, int px, int py)",
      "void showDistancePB(Graphics2D g, int px, int py, int w)",
      "void showPayLoad(Graphics2D g, int px, int py)",
      "void showGPS(Graphics2D g, int px, int py)",
      "void showTimer(Graphics2D g, int px, int py)",
      "double[] fromJsonArray(JsonArray jsa)",
      "boolean isTooHigh(int level)",
      "boolean isNullread(int level)",
      "int getNsteps()",
      "int getTimerSecs()",
      "int getMaxlevel()",
      "String getStatus()",
      "boolean getAlive()",
      "boolean getOnTarget()",
      "double[] getGPS()",
      "int getPayload()",
      "int getEnergyBurnt()",
      "int getCompass()",
      "int getAltitude()",
      "double getDistance()",
      "double getAngular()",
      "double getEnergy()",
      "int[][] getVisual()",
      "int[][] getLidar()",
      "int[][] getThermal()",
      "String getName()",
      "String printSensors()",
      "String getMyCommitment()"
    ],
    "IdentityManager": [
      "void onTick()",
      "void Execute()",
      "void takeDown()",
      "void doSubscribe(ACLMessage msg)",
      "void doCancel(ACLMessage msg)",
      "void purgeAgents()"
    ],
    "WorldController": [
      "void Execute()",
      "void takeDown()",
      "Status loadWorld()",
      "Status processRequest(ACLMessage incoming)",
      "Status processJoin(ACLMessage incoming)",
      "Status processExecute(ACLMessage incoming)",
      "Status processQuery(ACLMessage incoming)",
      "void updateXUI(String agentname)"
    ],
    "LARVAMiniDash": [
      "boolean preProcessACLM(ACLMessage msg)",
      "boolean setWorldMap(String olefile, int maxlevel, String spalette)",
      "void feedPerception(String perception)",
      "void feedPerceptionLocal(String perception)",
      "void initGUI()",
      "void windowClosing(WindowEvent e)",
      "void preLayout()",
      "void initLayout()",
      "void DashListener(ActionEvent e)",
      "void showMyStatus(Graphics2D g)",
      "void DashBoardLayout(Graphics2D g)",
      "void refresh()",
      "void showName(Graphics2D g, int px, int py)",
      "void showAlive(Graphics2D g, int px, int py)",
      "void showOnTarget(Graphics2D g, int px, int py)",
      "void showEnergy(Graphics2D g, int px, int py)",
      "void showEnergyPB(Graphics2D g, int px, int py, int w)",
      "void showAngularPB(Graphics2D g, int px, int py, int w)",
      "void showCompassPB(Graphics2D g, int px, int py, int w)",
      "void showCompass(Graphics2D g, int px, int py)",
      "void showAltimeter(Graphics2D g, int px, int py)",
      "void showAltimeterPB(Graphics2D g, int px, int py, int w)",
      "void showNSteps(Graphics2D g, int px, int py)",
      "void showAngular(Graphics2D g, int px, int py)",
      "void showDistance(Graphics2D g, int px, int py)",
      "void showDistancePB(Graphics2D g, int px, int py, int w)",
      "void showPayLoad(Graphics2D g, int px, int py)",
      "void showGPS(Graphics2D g, int px, int py)",
      "void showTimer(Graphics2D g, int px, int py)",
      "double[] fromJsonArray(JsonArray jsa)",
      "boolean isTooHigh(int level)",
      "boolean isNullread(int level)",
      "int getNsteps()",
      "int getTimerSecs()",
      "int getMaxlevel()",
      "String getStatus()",
      "boolean getAlive()",
      "boolean getOnTarget()",
      "double[] getGPS()",
      "int getPayload()",
      "int getEnergyBurnt()",
      "int getCompass()",
      "int getAltitude()",
      "double getDistance()",
      "double getAngular()",
      "double getEnergy()",
      "int[][] getVisual()",
      "int[][] getLidar()",
      "int[][] getThermal()",
      "String getName()",
      "String doReadPerceptions()",
      "boolean isOpen()",
      "void disableDashBoard()",
      "boolean isActivated()",
      "void setActivated(boolean activated)",
      "String printSensors()"
    ],
    "LARVAFirstAgent": [
      "boolean isSwing()",
      "void enableDeepLARVAMonitoring()",
      "String[] getConfiguredSensors()",
      "void takeDown()",
      "void Error(String message)",
      "void Info(String message)",
      "boolean loadMyPassport(String passportFileName)",
      "void setMypassport(String mypassport)",
      "String getMypassport()",
      "boolean doLARVACheckin()",
      "boolean doLARVACheckout()",
      "void LARVAsend(ACLMessage msg)",
      "ACLMessage LARVAblockingReceive()",
      "ACLMessage LARVAblockingReceive(MessageTemplate t)",
      "ACLMessage LARVAblockingReceive(MessageTemplate t, long milis)",
      "boolean Confirm(String message)",
      "void Alert(String message)",
      "String inputLine(String message)",
      "String inputSelect(String message, String[] options, String value)",
      "void refreshGUI()",
      "void doSwingLater(Runnable what)",
      "void doSwingWait(Runnable what)",
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
      "void initBoot(String[] args)",
      "JADEBoot Boot(String host, int port)",
      "JADEBoot Boot()",
      "JADEBoot Reboot()",
      "JADEBoot Progress()",
      "JADEBoot doCompleted(String task)",
      "boolean isCompleted(String task)",
      "JADEBoot processArguments()",
      "JADEBoot Configure()",
      "JADEBoot setupJadeConnection(String host, int port)",
      "JADEBoot setupMicroJadeConnection(String host, int port)",
      "JADEBoot selectConnection(String host, int port)",
      "JADEBoot selectConnection()",
      "JADEBoot launchAgent(String name, Class c)",
      "JADEBoot launchAgentContainer(String containerName, String agentName, Class c)",
      "JADEBoot WaitToClose()",
      "JADEBoot Close()",
      "JADEBoot WaitAndShutDown()",
      "JADEBoot ShutDown()",
      "void turnOff(ContainerController container)",
      "boolean isJade()",
      "boolean isMicroBoot()",
      "void Info(String s)",
      "void Error(String s)",
      "void Exception(Exception ex)",
      "void Abort(String s)",
      "void Exit()",
      "boolean isBehindRouter()",
      "boolean activateLocks()",
      "boolean isShutDown()",
      "boolean isReboot()",
      "boolean mustWait()",
      "boolean deactivateLocks()"
    ],
    "World": [
      "boolean filterReading(int x, int y, int range, int orientation)",
      "String getSurfaceName()",
      "void setSurfaceName(String surface)",
      "String getName()",
      "Point placeAtMap(String where, ArrayList<Double> pos)",
      "String loadConfig(String worldconfigfilename)",
      "OleConfig getConfig()",
      "World setOntology(Ontology o)",
      "Ontology getOntology()",
      "World setEnvironment(String name)",
      "Thing getEnvironment()",
      "Thing addThing(Thing i, PROPERTY[] visible)",
      "void removeThing(Thing i)",
      "Thing addThing(String name, PROPERTY[] visible)",
      "Thing addThing(String name, String type, PROPERTY[] visible)",
      "Thing getThing(String id)",
      "Thing getThingByName(String name)",
      "boolean findThing(String id)",
      "Set<String> listThings()",
      "ArrayList<String> getAllThings(String type)",
      "World addVisible(PROPERTY c, Thing t)",
      "ArrayList<Thing> getDetectableList(Perceptor p)",
      "JsonObject getPerception(Perceptor p)",
      "String getSpalette()"
    ],
    "Basher": [
      "Basher(String filename) throws FileNotFoundException, IOException",
      "Basher(String line, String ignore)",
      "Basher(Basher copy)",
      "ArrayList<String> getList()",
      "Basher grep(String search)",
      "Basher grepr(String regexp)",
      "Basher grepv(String search)",
      "Basher sed(String regexp, String replace)",
      "int wc()",
      "Basher head(int n)",
      "String isolateJsonKeyString(String key)",
      "String toString()"
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
    "ReportableObject": [
      "abstract String [] defReportableObjectList();",
      "abstract String reportObjectStatus(String objectid);"
    ],
    "TelegramMenuBar": [
      "TelegramMenu addMenu(String name)",
      "TelegramMenu getMenu(String name)",
      "TelegramMenuBar addOption(TelegramMenu m, String option, Consumer<TelegramChoice> r)",
      "TelegramMenuBar addOption(TelegramMenu m, String option, TelegramMenu subm)",
      "TelegramMenuBar addOption(TelegramMenu m, String option)",
      "TelegramMenuOption getOption(String code)",
      "TelegramMenu getRootMenu()",
      "void setRootMenu(TelegramMenu rootMenu)",
      "TelegramMenu getLastMenu(long cid)",
      "void setLastMenu(long cid, TelegramMenu lastMenu)",
      "boolean isMenu(String option)",
      "boolean isOption(String option)",
      "boolean isValidChoice(String option)",
      "TelegramMenu processChoice(long cid, String c)"
    ],
    "RoundProgressBar": [
      "RoundProgressBar setMaxValue(int vmax)",
      "RoundProgressBar setUnits(String u)",
      "RoundProgressBar setPreferredSize(int w)",
      "RoundProgressBar setPosition(int x, int y)",
      "RoundProgressBar setThick(int t)",
      "RoundProgressBar setBackground(Color b)",
      "RoundProgressBar setPanelbckgr(Color b)",
      "RoundProgressBar setColor(Color b)",
      "RoundProgressBar setValue(int v)",
      "RoundProgressBar showProgressBar(Graphics2D g)"
    ],
    "Sentence": [
      "String getSentence()",
      "String getPastSentence()",
      "String getFutureSentence()",
      "String getCursorSentence()",
      "Sentence parseSentence(String sentence)",
      "boolean hasNext()",
      "String next()",
      "String next(int many)",
      "boolean isNext(String tok)",
      "boolean isNext(String tok1, String tok2)",
      "boolean isNext(String tok1, String tok2, String tok3)",
      "int size()"
    ],
    "LARVA": [
      
    ],
    "DBAgent": [
      "Ole get()",
      "DBAgent set(Ole o)",
      "DBAgent clear()"
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
      "void doRebootNow()",
      "void doShutdownNow()",
      "void pressReturn()",
      "boolean AdminCheckSender(ACLMessage msg)",
      "boolean AdminGiveBirth(FactoryAgent factory, String agentname, String containername, Class c, OleConfig config)",
      "boolean AdminKill(FactoryAgent factory, String agentname)",
      "void AdminConfirmBirth()",
      "void AdminConfirmDeath(String replywith)",
      "OleReport ReportAgent()",
      "void Notify(String what, ArrayList<Integer> UserIDs, String inReplyTo)",
      "void NotifyReferee(String what)",
      "void NotifyTeacher(String what)",
      "void NotifyClass(String what)",
      "void NotifyUser(int userID, String what)",
      "void BehaviourDefaultSetup()",
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
      "void SetupLegacy()",
      "void PingSetup()",
      "void onTick()",
      "void DataBaseSetup()",
      "void onTick()",
      "void FactoryAgentSetup()",
      "void onTick()",
      "void DataBaseClear()",
      "void FactoryAgentClear()",
      "void AdminProcessesClear()",
      "void BehaviourDefaultClear()",
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
      "void doShield(Runnable r)",
      "void MajorException(Alerts a, String title, Exception ex)",
      "void StatusAlert(Alerts category, String title, String alert)",
      "void StatusEmergencyMode(Alerts category, String title, String alert)",
      "void StatusSafeMode()",
      "void StatusDisableSafeMode()",
      "void StatusEnableSafeMode()",
      "void StatusSet(AlertsLevel level, Alerts category, String alert)",
      "String encodeProduct(String product)",
      "String decodeProduct(String code)",
      "boolean tooManyRequests(ACLMessage incoming)",
      "boolean toGmailer(int userID, String subject, String body)"
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
    "OleSensor": [
      "OleSensor(Ole o)",
      "OleSensor setAllReadings(ArrayList<Double> values)",
      "ArrayList<Double> getAllReadings()",
      "String getSensorName()",
      "OleSensor setSensorName(String name)"
    ],
    "Internet": [
      "static String getLocalIPAddress()",
      "static boolean isBehindRouter()"
    ],
    "LARVAAirTrafficControl3D": [
      "void setTitle(String title)",
      "String getTitle()",
      "void clear()",
      "boolean setWorldMap(String olefile, int maxlevel, String spalette)",
      "void setMap(Color cmap[][], Palette p)",
      "void setGoals(JsonObject jsgoals)",
      "void addTrail(String ID, int x, int y, int z)",
      "void feedGoals(String goals)",
      "void feedPerception(String perception)",
      "void initGUI()",
      "void windowClosing(WindowEvent e)",
      "void DashListener(ActionEvent e)",
      "void refresh()",
      "void disableDashBoard()",
      "boolean isActivated()",
      "void setActivated(boolean activated)",
      "Palette getPalette(String name)",
      "HashMap<String, LARVAEmbeddedDash> getDashboards()",
      "int getWidth()",
      "int getHeight()"
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
      "SentenceBuilder sentence(SQLOP o)",
      "OleTable DBSBquery(SentenceBuilder s)",
      "boolean DBSBupdate(SentenceBuilder s)",
      "boolean DBSBinsert(SentenceBuilder s)",
      "boolean DBSBdelete(SentenceBuilder s)",
      "OleTable DBObjectQuery(String table, OleQuery oq)",
      "boolean DBObjectDelete(String table, OleQuery oq)",
      "boolean DBObjectUpdate(String table, OleQuery find, OleQuery update)",
      "boolean DBObjectUpdateUnique(String table, OleQuery find, OleQuery update)",
      "OleTable DBquery(String sentence)",
      "boolean DBupdate(String sentence)",
      "boolean DBinsert(String sentence)",
      "boolean DBdelete(String sentence)",
      "boolean isEmpty()",
      "ResultSet getResult()",
      "OleTable getOleTable()",
      "void loadSchema()",
      "ArrayList<String> getTableList()",
      "ArrayList<String> getColumnList(String tablename)",
      "String getColumnType(String tablename, String columname)",
      "boolean getORM()",
      "of.println(\"class \"+this._database+\" \");",
      "of.println(\"OleDataBase db;\");",
      "of.println(\"OleTable \"+table+\"GetRow(OleQuery oq) \");",
      "of.println(\"OleTable \"+table+\"GetRow(String field, String value) \");",
      "String[] errorLog()",
      "void reportException(Exception Ex)",
      "void reportError(String which)",
      "String defReportType()",
      "String[] defReportableObjectList()",
      "String reportObjectStatus(String objectid)"
    ],
    "liveBot": [
      "liveBot(String name, World w)",
      "boolean isAtBase()",
      "JsonObject toJson()",
      "void fromJson(JsonObject update)",
      "String toString()",
      "int getEnergy()",
      "int getOnTarget()",
      "int getAlive()",
      "int getPayload()",
      "ArrayList<Thing> getAllPayload()",
      "void addPayload(Thing what)",
      "String getStatus()",
      "void setStatus(String s)",
      "JsonArray getFullPayload()",
      "Point getPosition()",
      "int getEnergyBurnt()",
      "void addEnergyBurnt(int increment)",
      "int getNumSteps()",
      "void addNumSteps(int increment)",
      "Roles getRole()",
      "void setRole(Roles role)",
      "ArrayList<String> getCapabilities()",
      "void addCapabilities(String capability)",
      "ArrayList<String> getAttachments()",
      "void addAttachments(String attachment)",
      "ArrayList<Thing> getThePayload()",
      "void addThePayload(Thing capture)",
      "int getEnergylevel()",
      "void setEnergylevel(int energylevel)",
      "void burnEnergylevel(int increment)",
      "int getBurnmovement()",
      "void setBurnmovement(int burnmovement)",
      "int getBurnsensor()",
      "void setBurnsensor(int burnsensor)",
      "int getMinAllowedLevel()",
      "void setMinAllowedLevel(int minAllowedLevel)",
      "int getMaxAllowedLevel()",
      "void setMaxAllowedLevel(int maxAllowedLevel)",
      "int getRange()",
      "void setRange(int range)",
      "int getAltitude()",
      "void setAltitude(int altitude)",
      "int getInitialDistance()",
      "void setInitialDistance(int initialDistance)",
      "int getCurrentDistance()",
      "void setCurrentDistance(int currentDistance)",
      "String getMyCommitment()",
      "void setMyCommitment(String myCommitment)"
    ],
    "Palette": [
      "void debugPing(String message)",
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
      "Color getBWColor(int value, int minvalue, int maxvalue)  // Value [0,1], getcolor ANSICOLOR",
      "Color getThermalColor(int value, int minvalue, int maxvalue)  // Value [0,1], getcolor ANSICOLOR",
      "Color getTerrainColor(int value, int minvalue, int maxvalue)  // Value [0,1], getcolor ANSICOLOR",
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
    "LARVAFrame": [
      "LARVAFrame(String title, Consumer<ActionEvent> listener)",
      "LARVAFrame()",
      "void setListener(Consumer<ActionEvent> listener)",
      "void setKeyListener(Consumer<KeyEvent> myKeyListener)",
      "void actionPerformed(ActionEvent e)",
      "void closeLARVAFrame()",
      "void keyTyped(KeyEvent e)",
      "void keyPressed(KeyEvent e)",
      "void keyReleased(KeyEvent e)"
    ],
    "TokenList": [
      "static int countTokens(String tokenlist)",
      "static String getToken(String tokenlist, int index)",
      "static String addToken(String tokenlist, String token)",
      "static String removeToken(String tokenlist, String token)",
      "static String missingTokens(String partial, String total)"
    ],
    "TelegramUpdates": [
      "void initChatID(long cid)",
      "Set<Long> getAllChatIDRegistered()",
      "synchronized boolean isEmptyChatID(long chatID)",
      "synchronized boolean isEmptyUserID(int userID)",
      "synchronized boolean isAllEmpty()",
      "long getChatIDUser(int userID)",
      "List<Long> getAllChatIDActive()",
      "List<Long> getAllChatIDGroup(int groupID)",
      "ArrayList<Update> getChatIDPendingUpdates(long chatID)",
      "ArrayList<Update> getUserIDPendingUpdates(int userID)",
      "synchronized void pushUpdate(Update update)",
      "synchronized Update popUpdateChatID(long chatID)",
      "synchronized Update popUpdateUserID(int userID)",
      "TelegramChat getChatData(long cid)"
    ],
    "OleList": [
      "OleList init(OleConfig olecfg)",
      "OleList addElement(String element)",
      "OleList addAllElements(ArrayList<String> elements)",
      "OleList removeElement(int pos)",
      "OleList removeElement(String element)",
      "OleList clear()",
      "DefaultListModel getListMode()",
      "JScrollPane getPane()",
      "JButton getAddButton()",
      "JButton getRemoveButton()",
      "void valueChanged(ListSelectionEvent e)",
      "void actionPerformed(ActionEvent e)"
    ],
    "Angular": [
      "Angular setPreferredSize(int w)",
      "Angular setPosition(int x, int y)",
      "Angular setThick(int t)",
      "Angular setBackground(Color b)",
      "Angular setColor(Color b)",
      "Angular setValue(int v)",
      "Angular showAngle(Graphics2D g)"
    ],
    "StoreManager": [
      "void Execute()",
      "void processRequest(ACLMessage incoming)",
      "void supplyStore()",
      "void buyProduct(ACLMessage incoming, String product)",
      "void shoppingList(ACLMessage incoming)",
      "void takeDown()"
    ],
    "DeathStar": [
      "void Execute()",
      "void takeDown()",
      "Status MyCheckin()",
      "Status MyCheckout()",
      "Status myIdle()",
      "void setTitle()"
    ],
    "OlePassport": [
      "OlePassport(Ole o)"
    ],
    "OleSet": [
      "OleSet(Ole o)",
      "JsonArray getList()",
      "int size()",
      "String getItem(int i)",
      "OleSet addUniqueItem(String item)",
      "OleSet addUniqueItem(String[] items)",
      "OleSet addDupItem(String[] items)",
      "OleSet addDupItem(String item)",
      "OleSet removeItem(String item)",
      "OleSet removeALlItems(String item)",
      "boolean findItem(String item)",
      "OleSet getIntersection(OleSet other)",
      "OleSet getUnion(OleSet other)",
      "OleSet getConcatenation(OleSet other)",
      "OleSet getDifference(OleSet other)",
      "String prettyprint()"
    ],
    "Console": [
      "static final int black = defColor(0, 0, 0),",
      "Console(String title)",
      "Console(String title, int rows, int columns)",
      "Console(String title, int rows, int columns, int fontsize)",
      "Console(String title, String json)",
      "Process openExternalConsole(String title, int columns, int rows, int fontsize)",
      "Process openExternalConsoleArial(String title, int columns, int rows, int fontsize)",
      "Process openInternalConsole(String title)",
      "Process linkExternalConsole(String json)",
      "Console print(String s)",
      "Console println(String s)",
      "String readLine()",
      "int readInt()",
      "double readDouble()",
      "void waitToClose()",
      "void close()",
      "PrintStream out()",
      "String tty()",
      "InputStream in()",
      "Console captureStdInOut()",
      "Console resetStdInOut()",
      "String toJson()",
      "String toString()",
      "int getWidth()",
      "int getHeight()",
      "static int defColor(double r, double g, double b)",
      "static int negColor(double r, double g, double b)",
      "static int negColor(int color)",
      "static String defJsonColor(double r, double g, double b)",
      "static double getRed(int color)",
      "static double getGreen(int color)",
      "static double getBlue(int color)",
      "int getText()",
      "int getBackground()",
      "Console resetColors()",
      "Console setBackground(int color)",
      "static String defBackground(int color)",
      "Console setText(int color)",
      "static String defText(int color)",
      "static String defclearScreen()",
      "Console clearScreen()",
      "static String defCursorXY(int x, int y)",
      "Console setCursorXY(int x, int y)",
      "Console setCursorOn()",
      "Console setCursorOff()",
      "Console doRectangle(int x, int y, int w, int h)",
      "Console doRectangleFrame(int x, int y, int w, int h)",
      "Console doFrame(int x, int y, int x2, int y2)",
      "Console doGrid(int x, int y, int x2, int y2)",
      "Console doFrameTitle(String title, int x, int y, int w, int h)",
      "Console doProgressBar(int x, int y, int width, double value, double max)",
      "void printMinibar(int x, int y, int level, int front, int back)",
      "void printHMinibar(int x, int y, double level, double maxlevel, int width, int front, int back)",
      "Console printHRulerTop(int x, int y, int width, int each, int valmax)",
      "Console printVRuler(int x, int y, int height, int each, int valmax)",
      "void printGrid(int x, int y, int x2, int y2, int level)",
      "Console printWRuler(int x, int y, int width, int height, int each, int hmax, int vmax)",
      "char doMessage(String message, String allowed)",
      "boolean doConfirm(String message)",
      "void doPressReturn(String message)",
      "Console doTextArea(int px, int py, int w, int h, ArrayList<String> lines)",
      "Console doRadioColor(boolean radio)"
    ],
    "EmptyAgent": [
      "void Execute()",
      "void takeDown()"
    ],
    "LARVADialog": [
      "void actionPerformed(ActionEvent e)",
      "void closeLARVADialog()"
    ],
    "SwingTools": [
      "static void doSwingWait(Runnable what)",
      "static ImageIcon toIcon(String image, int nw, int nh)",
      "static void initLookAndFeel()",
      "static void initFlatLafLight()",
      "static void initFlatLafDark()",
      "static void Info(String message)",
      "static void Error(String message)",
      "static void Warning(String message)",
      "static  String inputLine(String message)",
      "static String inputSelect(String message, String[] options, String value)",
      "static boolean Confirm(String message)"
    ],
    "SensorDecoder": [
      "boolean setWorldMap(String content, int maxlevel)",
      "int getMaxlevel()",
      "void setMaxlevel(int maxlevel)",
      "String getStatus()",
      "String getSessionID()",
      "void setSessionID(String sessionID)",
      "Map2DColor getWorldMap()",
      "boolean hasSensor(String sensorname)",
      "JsonArray getSensor(String sensorname)",
      "void setSensor(String sensorname, JsonArray reading)",
      "void clear()",
      "boolean getAlive()",
      "boolean getOnTarget()",
      "double[] fromJsonArray(JsonArray jsa)",
      "boolean isReady()",
      "double[] getGPS()",
      "int getPayload()",
      "int getCompass()",
      "int getAltitude()",
      "double getDistance()",
      "double getAngular()",
      "double getAngular(Point p)",
      "double getEnergy()",
      "double getEnergyBurnt()",
      "String[] getTrace()",
      "String[] getCargo()",
      "int getNSteps()",
      "int[][] getVisualData()",
      "int[][] getLidarData()",
      "int[][] getThermalData()",
      "JsonObject toJson()",
      "Ole toOle()",
      "void fromJson(JsonArray jsareading)",
      "void fromOle(ArrayList<Ole> oreading)",
      "String getName()",
      "String getSession()",
      "void feedPerception(String content)",
      "String getCommitment()",
      "void setCommitment(String commitment)",
      "String [] getSensorList()"
    ],
    "SessionManager": [
      "void takeDown()",
      "void Introduction()",
      "void solvedProblem(String problemName)",
      "void Error(String message)",
      "void Info(String message)",
      "void addMilestone(String milestone)"
    ],
    "Point": [
      "Point(double x, double y, double z)",
      "Point(double x, double y)",
      "Point(double x)",
      "Point(String spoint)",
      "Point(Ole o)",
      "double getX()",
      "Point setX(double x)",
      "double getY()",
      "Point setY(double y)",
      "double getZ()",
      "Point setZ(double z)",
      "int getDimension()",
      "Point clear()",
      "Point define(String key)",
      "double fastDistanceXYTo(Point p)",
      "double realDistanceTo(Point p)",
      "Point getOrigin()",
      "boolean isEqualTo(Point p)",
      "boolean isProjection(Point p)",
      "Point plus(Point p)",
      "Point plus(Vector v)",
      "Point invert()",
      "Point minus(Point p)",
      "Point times(Point p)",
      "Point scalar(double s)",
      "double sum()",
      "String toString()",
      "JsonArray toJson()",
      "Ole toOle()",
      "Point fromJson(JsonArray jspa)",
      "Point to3D()",
      "Point to2D()",
      "Point to1D()",
      "Point clone()",
      "java.awt.Point getAWTPoint()"
    ],
    "ADMINMessage": [
      "ADMINMessage(LARVAAdminAgent sender)",
      "final void init(LARVAAdminAgent sender)",
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
      "PasswordAuthentication getPasswordAuthentication()",
      "SendGMailSMTP sendGMail(String receiver, String subject, String body, String filename) throws AddressException, MessagingException, IOException",
      "PasswordAuthentication getPasswordAuthentication()"
    ],
    "Map2DPalette": [
      
    ],
    "Perceptor": [
      "String getName()",
      "Thing getOwner()",
      "PROPERTY getProperty()",
      "String getType()",
      "OPERATION getOperation()",
      "ATTACH getAttachment()",
      "SELECTION getSelection()",
      "int getRange()",
      "double getSensitivity()",
      "Perceptor setWhatPerceives(PROPERTY property, String type, SELECTION select)",
      "Perceptor setHowPerceives(OPERATION operation, int range)",
      "Perceptor setAttacment(ATTACH attachment)",
      "Perceptor setSensitivity(double s)",
      "Perceptor setRange(int r)",
      "Perceptor setType(String type)",
      "JsonObject getReading()"
    ],
    "AirTrafficControl": [
      "void mouseWheelMoved(MouseWheelEvent e)",
      "void mouseClicked(MouseEvent e)",
      "void mousePressed(MouseEvent e)",
      "void mouseReleased(MouseEvent e)",
      "void mouseEntered(MouseEvent e)",
      "void mouseExited(MouseEvent e)",
      "void setPreferredSize(Dimension d)",
      "void addRuler()",
      "void addTrail()",
      "void addShadow(int s)",
      "void addHotSpot()",
      "Graphics2D getMapGraphics()",
      "void setGoals(JsonObject jsgoals)",
      "void addTrail(String ID, int x, int y, int z)",
      "void setBounds(int x, int y, int w, int h)",
      "void defLayout()",
      "AirTrafficControl setMap(Color m[][], Palette p)",
      "void paintPalette(Graphics2D g)",
      "void paintMap(Graphics2D g)",
      "void paintTrail(Graphics2D g, String ID)",
      "void paintHotSpots(Graphics2D g, String ID)",
      "void paintTrailPos(Graphics2D g, String ID, int pos)",
      "void paintGoal(Graphics2D g, JsonObject jsgoal)",
      "void paintPoint(Graphics2D g, Point p, Color c)",
      "void framePoint(Graphics2D g, Point p, Color c)",
      "void hideTrailPos(Graphics2D g, String ID, int pos)",
      "void hidePoint(Graphics2D g, Point p)",
      "void preDecorateMap(Graphics2D g)",
      "void postDecorateMap(Graphics2D g)",
      "void setColor(int x, int y, Color c)",
      "Color getColor(int x, int y)",
      "Color[][] getMap()",
      "int getMapWidth()",
      "int getMapHeight()",
      "ATC_Trail(String id, Color nc)",
      "void pushTrail(Point p)",
      "int size()",
      "Point getPoint(int i)"
    ],
    "OleReport": [
      "OleReport(ReportableObject o)",
      "String shortTextReport()"
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
      "int getSensorRange(glossary.sensors name)",
      "int getBurnRatio(glossary.sensors name)",
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
      "fontsize": 24,
      "fillcolor": "white",
      "color": "black"
    },
    "agents": {
      "face": "Courier New",
      "fontsize": 24,
      "fillcolor": "white",
      "color": "black"
    },
    "appboot": {
      "face": "Courier New",
      "fontsize": 24,
      "fillcolor": "white",
      "color": "black"
    },
    "basher": {
      "face": "Courier New",
      "fontsize": 24,
      "fillcolor": "white",
      "color": "black"
    },
    "console": {
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
    "geometry": {
      "face": "Courier New",
      "fontsize": 24,
      "fillcolor": "white",
      "color": "black"
    },
    "glossary": {
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
    "map2D": {
      "face": "Courier New",
      "fontsize": 24,
      "fillcolor": "white",
      "color": "black"
    },
    "messaging": {
      "face": "Courier New",
      "fontsize": 24,
      "fillcolor": "white",
      "color": "black"
    },
    "ontology": {
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
    "tools": {
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
    "extends": "[arrowhead=onormal, penwidth=2, color=black]",
    "owns": "[style=dotted,arrowhead=odiamond, penwidth=2,color=blue]"
  }
}