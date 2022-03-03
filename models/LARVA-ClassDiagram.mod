{
  "classtypes": [
    "data",
    "swing"
  ],
  "relationtypes": [
    "extends",
    "owns"
  ],
  "relation": {
    "extends": [
      {
        "OleFrame": [
          "OleApplication"
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
          "OleSensor",
          "OleSet",
          "OleTable"
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
          
        ]
      },
      {
        "OleMenuBar": [
          "OleFrame",
          "OleConfig"
        ]
      },
      {
        "OleFrame": [
          
        ]
      },
      {
        "OleTable": [
          
        ]
      },
      {
        "OleButton": [
          "OleApplication"
        ]
      },
      {
        "OleDialog": [
          
        ]
      },
      {
        "OleToolBar": [
          "OleFrame",
          "OleApplication",
          "OleConfig"
        ]
      },
      {
        "OleFile": [
          
        ]
      },
      {
        "OleSensor": [
          
        ]
      },
      {
        "OleDataBase": [
          "Ole",
          "OleTable"
        ]
      },
      {
        "OleList": [
          
        ]
      },
      {
        "OleDot": [
          
        ]
      },
      {
        "ClassDiagram": [
          "OleConfig",
          "OleApplication",
          "OleDrawPane",
          "OleBitmapPane"
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
        "OleBitmapPane": [
          "OleDrawPane"
        ]
      },
      {
        "OleDrawPane": [
          
        ]
      },
      {
        "OleApplication": [
          
        ]
      },
      {
        "OleConfig": [
          
        ]
      },
      {
        "OleReport": [
          
        ]
      }
    ]
  },
  "methods": {
    "Ole": [
      "public static Ole Json2Ole(JsonObject jsole)",
      "protected static JsonValue Ole2JsonValue(JsonValue jsobject)",
      "public static JsonObject Ole2PlainJson(Ole odata)",
      "public static List<String> allNames(JsonObject jso)",
      "public Ole()",
      "public Ole(JsonObject jsole)",
      "public Ole(String s)",
      "protected JsonObject meta()",
      "public Ole clear()",
      "protected void Init()",
      "public boolean isOle()",
      "public boolean isEmpty()",
      "public Ole set(String s)",
      "public Ole fromJson(JsonObject jsole)",
      "protected Ole fromPlainJson(JsonObject jsole)",
      "protected Ole fromFullJson(JsonObject jsole)",
      "public JsonObject toPlainJson()",
      "public String toString(WriterConfig wcon)",
      "public String toString()",
      "public Ole parse(String s)",
      "public boolean checkField(String fieldName)",
      "public Ole addField(String fieldName)",
      "public Ole setID(String id)",
      "public Ole setType(String type)",
      "public Ole setDate(String date)",
      "public Ole setDescription(String description)",
      "public Ole setOle()",
      "public String getID()",
      "public String getType()",
      "public String getDate()",
      "public String getDescription()",
      "public List<String> getFieldList()",
      "public String getFieldType(String field)",
      "public String getValueType(JsonValue jsv)",
      "public final Ole getOle(String field)",
      "public Ole set(String field, boolean value)",
      "public Ole set(String field, int value)",
      "public Ole set(String field, double value)",
      "public Ole set(String field, String value)",
      "public Ole set(String field, JsonArray value)",
      "public Ole set(String field, Ole value)",
      "public boolean isEncrypted()",
      "public Ole onEncryption(Cryptor myc)",
      "public Ole offEncryption()",
      "public Ole loadFile(String fullfilename)",
      "public final String getField(String field)",
      "public final boolean getBoolean(String field)",
      "public final int getInt(String field)",
      "public final double getDouble(String field)",
      "public final String getString(String field)",
      "public final ArrayList getArray(String field)",
      "public final Ole setField(String fieldname, String value)",
      "public final Ole setField(String fieldname, int value)",
      "public final Ole setField(String fieldname, double value)",
      "public final Ole setField(String fieldname, boolean value)",
      "public final Ole setField(String fieldname, ArrayList<Object> value)",
      "public final Ole setField(String fieldname, Ole value)",
      "public final Ole addToField(String fieldname, String v)",
      "public final Ole addToField(String fieldname, int v)",
      "public final Ole addToField(String fieldname, double v)",
      "public final Ole addToField(String fieldname, boolean v)",
      "public final Ole addToField(String fieldname, Ole v)",
      "public Ole setFieldGeneric(String field, Object s)"
    ],
    "OleMenuBar": [
      "public JMenu addMenu(String name, OleConfig omenu)"
    ],
    "OleFrame": [
      "public OleFrame(OleConfig olecfg)",
      "public OleFrame init()",
      "public void actionPerformed(ActionEvent e)",
      "public abstract void myActionListener(ActionEvent e);",
      "public abstract void myKeyListener(KeyEvent e);"
    ],
    "OleButton": [
      "public void mouseEntered(MouseEvent e)",
      "public void mouseExited(MouseEvent e)",
      "public void setEnabled(boolean b)"
    ],
    "OleDialog": [
      "public static String doSaveAsFile(String currentfolder)",
      "public  static String doSelectFolder(String currentfolder)",
      "public OleDialog(JFrame parent, String title)",
      "public OleDialog addActionListener(BiConsumer<ActionEvent, OleConfig> l)",
      "public void actionPerformed(ActionEvent e)",
      "public boolean run(OleConfig o)",
      "public OleConfig getResult()",
      "protected void setLayout(OleConfig olecfg)",
      "protected JPanel setLayout(String oid, Ole ocomponents, OleConfig olecfg)",
      "protected void setValues(OleConfig olecfg)",
      "protected void setValues(String oid, Ole ocomponents, OleConfig olecfg)",
      "protected OleConfig getValues(OleConfig olecfg)",
      "protected OleConfig getValues(Ole currentTab, OleConfig olecfg)"
    ],
    "OleToolBar": [
      
    ],
    "OleFile": [
      "public OleFile(Ole o)",
      "public OleFile loadFile(String fullfilename)",
      "public boolean saveFile(String outputfolder)",
      "public String getStringContent()",
      "public String getFileName()"
    ],
    "OleList": [
      "public OleList init(OleConfig olecfg)",
      "public OleList addElement(String element)",
      "public OleList addAllElements(ArrayList<String> elements)",
      "public OleList removeElement(int pos)",
      "public OleList removeElement(String element)",
      "public OleList clear()",
      "private int getIndex(String what)",
      "public DefaultListModel getListMode()",
      "public JScrollPane getPane()",
      "public JButton getAddButton()",
      "public JButton getRemoveButton()",
      "public void valueChanged(ListSelectionEvent e)",
      "public void actionPerformed(ActionEvent e)"
    ],
    "OleDot": [
      "public OleDot(Ole o)",
      "public void setResolution(int ppp)",
      "public static void exportTo(String dotFile, String type)",
      "public void toDot(String dotfilename)",
      "public void recursiveTree(Ole classname, PrintStream output)"
    ],
    "ClassDiagram": [
      "public void myActionListener(ActionEvent e)",
      "public void myKeyListener(KeyEvent e)",
      "public void Draw(Graphics2D g)",
      "public static void frameActionListener(ActionEvent e)",
      "public static void frameKeyListener(KeyEvent e)",
      "public static void editProjectListener(ActionEvent e, OleConfig olecfg)",
      "public static void scanFiles(OleConfig olecfg)",
      "public static void scanPackages(OleConfig olecfg)",
      "public static void scanClasses(OleConfig olecfg)",
      "public static void editProject()",
      "public static boolean openProject()",
      "public static void saveProject()",
      "public static void saveAsProject()",
      "public static void generateModel(OleConfig oleconf, boolean simplified)",
      "public static void clearFiles()",
      "public static void clearModel()",
      "public static void findFolder(String padding, String folder) throws IOException",
      "public static void findAllFiles(ArrayList<String> inputfolders, OleConfig olecfg)",
      "public static void findUsage(ArrayList<String> files, OleConfig olecfg)",
      "public static void findAllPackages(ArrayList<String> files, OleConfig olecfg)",
      "public static void findAllClasses(ArrayList<String> packages, OleConfig olecfg)",
      "public static void findAll(OleConfig olecfg)",
      "public static void dumpJson(OleConfig olecfg, boolean simplified)",
      "public static String getClassName(String filename)",
      "public static String getPackageName(String filename)",
      "public static String getExtends(String filename)",
      "return aux.grep(\"class\").toString().replaceAll(\"public.*extends \", \"\").replaceAll(\"\\\\.*\", \"\").trim();",
      "public static ArrayList<String> getDataMembers(String filename)",
      "if (line.matches(\"public class.*\"))",
      "public static ArrayList<String> getMethods(String filename)",
      "if ((line.contains(\"public\") || line.contains(\"private\") || line.contains(\"protected\"))",
      "if (line.matches(\"public class.*\"))",
      "public static void paintDiagram(Graphics2D myg)",
      "public static void showProjectSummary()",
      "public static ArrayList<String> selectPreferred(ArrayList<String> Original, ArrayList<String> Preferred)"
    ],
    "OleBitmapPane": [
      "public void mouseDragged(MouseEvent e)",
      "public void mouseMoved(MouseEvent e)",
      "public void mouseWheelMoved(MouseWheelEvent e)",
      "public void mouseClicked(MouseEvent e)",
      "public void mousePressed(MouseEvent e)",
      "public void mouseReleased(MouseEvent e)",
      "public void mouseEntered(MouseEvent e)",
      "public void mouseExited(MouseEvent e)",
      "public void clear()",
      "public void reset(Dimension d)",
      "public JPanel getOleDrawPane()",
      "public void setZoom(double z)",
      "public double getZoom()",
      "public void zoomIn()",
      "public void zoomOut()"
    ],
    "OleDrawPane": [
      "public void paintComponent(Graphics g)",
      "public void clear()",
      "public Graphics2D canvas()",
      "abstract public void OleDraw(Graphics2D g);"
    ],
    "OleApplication": [
      "public OleApplication init()",
      "public void OleDraw(Graphics2D g)",
      "public OleBitmapPane getScollPane()",
      "public OleDrawPane getDrawingPane()",
      "public JPanel getMainPanel()",
      "public abstract void Draw(Graphics2D g);",
      "protected void addLabel(Container con, String s)",
      "protected void addLabel(Container con, String s, Color col)",
      "public LayoutManager defLayout(Container c)",
      "public void actionPerformed(ActionEvent e)",
      "public abstract void myActionListener(ActionEvent e);",
      "public abstract void myKeyListener(KeyEvent e);",
      "public void keyTyped(KeyEvent e)",
      "public void keyPressed(KeyEvent e)",
      "public void keyReleased(KeyEvent e)",
      "public void cleanStatus()",
      "public void showStatus(String message)",
      "public void showInfo(String message)",
      "public void showWarning(String message)",
      "public void showError(String message)",
      "public void showProgressFrame(String what, int value, int max)",
      "public void myActionListener(ActionEvent e)",
      "public void myKeyListener(KeyEvent e)",
      "public void keyTyped(KeyEvent e)",
      "public void keyPressed(KeyEvent e)",
      "public void keyReleased(KeyEvent e)",
      "public void showProgress(String what, int value, int max)",
      "public void showProgress(String what, int value)",
      "public void showProgress(String what)",
      "public void closeProgress(String what)",
      "public void Info(String message)",
      "public void Warning(String message)",
      "public void Error(String message)",
      "public String inputLine(String message)",
      "public String inputSelect(String message, String[] options, String value)",
      "public boolean Confirm(String message)"
    ],
    "OleConfig": [
      "public OleConfig(Ole o)",
      "public Ole getProperties()",
      "public Ole getProperties(String sfield)",
      "public Ole getOptions()",
      "protected List<String> getTabList()",
      "public int numTabs()",
      "public List<String> getAllTabNames()",
      "public Ole getTab(String stab)",
      "public List<String> getAllTabFields(String stab)"
    ]
  },
  "class": {
    "data": [
      "Ole",
      "OleConfig",
      "OleDot",
      "OleFile",
      "OlePassport",
      "OleQuery",
      "OleReport",
      "OleSensor",
      "OleSet",
      "OleTable"
    ],
    "swing": [
      "OleApplication",
      "OleBitmapPane",
      "OleButton",
      "OleDialog",
      "OleDrawPane",
      "OleFrame",
      "OleList",
      "OleMenuBar",
      "OleToolBar"
    ]
  },
  "format": {
    "data": {
      "face": "Arial",
      "fontsize": 24,
      "fillcolor": "Chartreuse",
      "color": "black"
    },
    "swing": {
      "face": "Arial",
      "fontsize": 24,
      "fillcolor": "MediumSpringGreen",
      "color": "black"
    },
    "extends": "[arrowhead=onormal,color=black]",
    "owns": "[style=dotted,arrowhead=odiamond,color=blue]"
  }
}