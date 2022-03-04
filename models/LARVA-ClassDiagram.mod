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
        "JScrollPane": [
          "OleBitmapPane"
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
  "methods": {
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
      "OleConfig getResult()",
      "void setLayout(OleConfig olecfg)",
      "JPanel setLayout(String oid, Ole ocomponents, OleConfig olecfg)",
      "void setValues(OleConfig olecfg)",
      "void setValues(String oid, Ole ocomponents, OleConfig olecfg)",
      "OleConfig getValues(OleConfig olecfg)",
      "OleConfig getValues(Ole currentTab, OleConfig olecfg)"
    ],
    "OleToolBar": [
      
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
      "int getWidth()",
      "int getHeight()",
      "void setWidth(int width)",
      "void setHeight(int height)",
      "static void exportTo(String dotFile, String type)",
      "void toDot(String dotfilename)",
      "void recursiveTree(Ole classname, PrintStream output)",
      "static String highlight(String s)"
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
      "abstract void OleDraw(Graphics2D g);"
    ],
    "OleApplication": [
      "OleApplication init()",
      "void OleDraw(Graphics2D g)",
      "OleBitmapPane getScollPane()",
      "OleDrawPane getDrawingPane()",
      "JPanel getMainPanel()",
      "abstract void Draw(Graphics2D g);",
      "void addLabel(Container con, String s)",
      "void addLabel(Container con, String s, Color col)",
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
      "List<String> getTabList()",
      "int numTabs()",
      "List<String> getAllTabNames()",
      "Ole getTab(String stab)",
      "List<String> getAllTabFields(String stab)"
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
      "face": "Courier New",
      "fontsize": 24,
      "fillcolor": "white",
      "color": "black"
    },
    "swing": {
      "face": "Courier New",
      "fontsize": 24,
      "fillcolor": "white",
      "color": "black"
    },
    "extends": "[arrowhead=onormal, penwidth=2, color=black]",
    "owns": "[style=dotted,arrowhead=odiamond, penwidth=2,color=blue]"
  }
}