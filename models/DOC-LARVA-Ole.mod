{
  "classtypes": [
    "data",
    "swing",
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
          
        ]
      },
      {
        "JPanel": [
          "OleDrawPane",
          "OleToolBar"
        ]
      },
      {
        "OleFrame": [
          "OleApplication"
        ]
      },
      {
        "JButton": [
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
          "OleSensor",
          "OleSet",
          "OleTable"
        ]
      },
      {
        "JFrame": [
          "OleFrame"
        ]
      },
      {
        "OlePassport": [
          
        ]
      },
      {
        "JScrollPane": [
          "OleBitmapPane"
        ]
      },
      {
        "JDialog": [
          "OleDialog"
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
          "OleConfig"
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
    "OleMenuBar": [
      "JMenu addMenu(String name, OleConfig omenu)"
    ],
    "OleFrame": [
      "OleFrame(OleConfig olecfg)",
      "OleFrame init()",
      "void actionPerformed(ActionEvent e)",
      "abstract void myActionListener(ActionEvent e);",
      "abstract void myKeyListener(KeyEvent e);"
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
    "OleButton": [
      "void mouseEntered(MouseEvent e)",
      "void mouseExited(MouseEvent e)",
      "void setEnabled(boolean b)"
    ],
    "OleDialog": [
      "static String doSaveAsFile(String currentfolder)",
      "static String doSelectFolder(String currentfolder)",
      "OleDialog(JFrame parent, String title)",
      "OleDialog addActionListener(BiConsumer<ActionEvent, OleConfig> l)",
      "void actionPerformed(ActionEvent e)",
      "boolean run(OleConfig o)",
      "boolean run(OleConfig o, String defaulttab)",
      "OleConfig getResult()"
    ],
    "OleToolBar": [
      
    ],
    "OleFile": [
      "OleFile(Ole o)",
      "OleFile loadFile(String fullfilename)",
      "boolean saveFile(String outputfolder)",
      "String getStringContent()",
      "String getFileName()"
    ],
    "OleSensor": [
      "OleSensor(Ole o)",
      "OleSensor setAllReadings(ArrayList<Double> values)",
      "ArrayList<Double> getAllReadings()",
      "String getSensorName()",
      "OleSensor setSensorName(String name)"
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
    "OleDot": [
      "OleDot(Ole o)",
      "void setResolution(int ppp)",
      "boolean isFill()",
      "void setFill(boolean fill)",
      "int getWidth()",
      "int getHeight()",
      "void setWidth(int width)",
      "void setHeight(int height)",
      "static void exportTo(String dotFile, String layoutmanager, String type)",
      "void toDot(String dotfilename)",
      "if (getOle(\"methods\").get(classname) != null)",
      "void recursiveTree(Ole classname, PrintStream output)",
      "static String highlight(String s)"
    ],
    "OleSet": [
      "OleSet(Ole o)",
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
    "OlePassport": [
      "OlePassport(Ole o)"
    ],
    "OleBitmapPane": [
      "void mouseDragged(MouseEvent e)",
      "void mouseMoved(MouseEvent e)",
      "void mouseWheelMoved(MouseWheelEvent e)",
      "void mouseClicked(MouseEvent e)",
      "void mousePressed(MouseEvent e)",
      "void mouseReleased(MouseEvent e)",
      "void mouseEntered(MouseEvent e)",
      "void mouseExited(MouseEvent e)",
      "void clear()",
      "void reset(Dimension d)",
      "JPanel getOleDrawPane()",
      "void setZoom(double z)",
      "double getZoom()",
      "void zoomIn()",
      "void zoomOut()"
    ],
    "OleDrawPane": [
      "void paintComponent(Graphics g)",
      "void clear()",
      "Graphics2D canvas()",
      "abstract  void OleDraw(Graphics2D g);"
    ],
    "OleApplication": [
      "OleApplication init()",
      "void OleDraw(Graphics2D g)",
      "OleBitmapPane getScollPane()",
      "OleDrawPane getDrawingPane()",
      "JPanel getMainPanel()",
      "abstract void Draw(Graphics2D g);",
      "LayoutManager defLayout(Container c)",
      "void actionPerformed(ActionEvent e)",
      "abstract void myActionListener(ActionEvent e);",
      "abstract void myKeyListener(KeyEvent e);",
      "void keyTyped(KeyEvent e)",
      "void keyPressed(KeyEvent e)",
      "void keyReleased(KeyEvent e)",
      "void cleanStatus()",
      "void showStatus(String message)",
      "void showInfo(String message)",
      "void showWarning(String message)",
      "void showError(String message)",
      "void showProgressFrame(String what, int value, int max)",
      "void myActionListener(ActionEvent e)",
      "void myKeyListener(KeyEvent e)",
      "void keyTyped(KeyEvent e)",
      "void keyPressed(KeyEvent e)",
      "void keyReleased(KeyEvent e)",
      "void showProgress(String what, int value, int max)",
      "void showProgress(String what, int value)",
      "void showProgress(String what)",
      "void closeProgress(String what)",
      "void Info(String message)",
      "void Warning(String message)",
      "void Error(String message)",
      "String inputLine(String message)",
      "String inputSelect(String message, String[] options, String value)",
      "boolean Confirm(String message)"
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
    "OleReport": [
      "OleReport(ReportableObject o)",
      "String shortTextReport()"
    ]
  },
  "class": {
    "extern": [
      "JPanel",
      "JFrame",
      "JPanel",
      "JDialog",
      "JFrame",
      "JPanel",
      "JButton",
      "JsonObject",
      "JScrollPane",
      "JButton",
      "JDialog",
      "JPanel",
      "JFrame",
      "JList",
      "JMenuBar",
      "JPanel",
      "OleDataBase",
      "JButton",
      "JDialog",
      "JFrame",
      "JList",
      "JMenuBar",
      "JPanel",
      "JScrollPane",
      "JsonObject"
    ],
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
      "fontsize": 9,
      "fillcolor": "white",
      "color": "black"
    },
    "swing": {
      "face": "Arial",
      "fontsize": 9,
      "fillcolor": "white",
      "color": "black"
    },
    "extern": {
      "face": "Arial",
      "fontsize": 9,
      "fillcolor": "gray",
      "color": "black"
    },
    "extends": "[arrowhead=onormal, penwidth=1, color=black]",
    "owns": "[style=dotted,arrowhead=odiamond, penwidth=1,color=blue]"
  }
}