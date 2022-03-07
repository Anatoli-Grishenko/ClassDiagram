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
          "OleConfig"
        ]
      },
      {
        "JFrame": [
          "LARVAFrame",
          "OleFrame"
        ]
      },
      {
        "JScrollPane": [
          "Ole3DPane",
          "OleScrollPane"
        ]
      },
      {
        "LARVADash": [
          "LARVACompactDash",
          "LARVAMiniDash"
        ]
      },
      {
        "JPopupMenu": [
          
        ]
      },
      {
        "OleApplication": [
          "Ole3DApplication"
        ]
      },
      {
        "Entity3D": [
          "Circle3D",
          "Line3D",
          "Polygon3D",
          "String3D"
        ]
      },
      {
        "JDialog": [
          "LARVADialog",
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
        "Ole": [
          
        ]
      },
      {
        "Vector3D": [
          "Point3D"
        ]
      },
      {
        "Map2DColor": [
          
        ]
      },
      {
        "LARVADash": [
          "LARVAFrame",
          "Map2DColor"
        ]
      },
      {
        "Line3D": [
          "Point3D"
        ]
      },
      {
        "OleMenuBar": [
          "OleFrame",
          "OleConfig"
        ]
      },
      {
        "Entity3D": [
          
        ]
      },
      {
        "OleFrame": [
          
        ]
      },
      {
        "LARVAAirTrafficControlTiles": [
          "LARVAFrame",
          "AirTrafficControl",
          "LARVAEmbeddedDash"
        ]
      },
      {
        "Ole3DPane": [
          "OleDrawPane",
          "Scene3D"
        ]
      },
      {
        "OleButton": [
          "OleApplication"
        ]
      },
      {
        "LARVACompactDash": [
          
        ]
      },
      {
        "Ole3DApplication": [
          
        ]
      },
      {
        "LARVAEmbeddedDash": [
          
        ]
      },
      {
        "OleDialog": [
          "OleConfig"
        ]
      },
      {
        "LARVAMiniDash": [
          
        ]
      },
      {
        "Scene3D": [
          "Entity3D"
        ]
      },
      {
        "Polygon3D": [
          "Point3D"
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
        "OleScrollPane": [
          "OleDrawPane"
        ]
      },
      {
        "Point3D": [
          
        ]
      },
      {
        "String3D": [
          
        ]
      },
      {
        "LARVAFrame": [
          
        ]
      },
      {
        "OleList": [
          
        ]
      },
      {
        "DeathStar": [
          "LARVAMiniDash",
          "LARVAAirTrafficControlTiles"
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
        "OleDrawPane": [
          
        ]
      },
      {
        "Circle3D": [
          "Point3D"
        ]
      },
      {
        "OleApplication": [
          
        ]
      },
      {
        "AirTrafficControl": [
          "Map2DColor"
        ]
      },
      {
        "OleConfig": [
          
        ]
      }
    ]
  },
  "publicmethods": {
    "OleMenuBar": [
      "JMenu addMenu(String name, OleConfig omenu)"
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
    "OleApplication": [
      "OleApplication init()",
      "void OleDraw(Graphics2D g)",
      "OleScrollPane getScollPane()",
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
    ]
  },
  "protectedmethods": {
    "OleMenuBar": [
      
    ],
    "OleButton": [
      
    ],
    "OleDialog": [
      "void setLayout(OleConfig olecfg)",
      "JPanel setLayout(String oid, Ole ocomponents, OleConfig olecfg)",
      "void setValues(OleConfig olecfg)",
      "void setValues(String oid, Ole ocomponents, OleConfig olecfg)",
      "OleConfig getValues(OleConfig olecfg)",
      "OleConfig getValues(Ole currentTab, OleConfig olecfg)"
    ],
    "OleApplication": [
      "void addLabel(Container con, String s)",
      "void addLabel(Container con, String s, Color col)"
    ]
  },
  "class": {
    "extern": [
      "JPanel",
      "JDialog",
      "JFrame",
      "JPanel",
      "JButton",
      "JPopupMenu",
      "JsonObject",
      "JScrollPane",
      "JButton",
      "JDialog",
      "JPanel",
      "JFrame",
      "JList",
      "JMenuBar",
      "JScrollPane",
      "JPanel",
      "JButton",
      "JDialog",
      "JFrame",
      "JList",
      "JMenuBar",
      "JPanel",
      "JPopupMenu",
      "JScrollPane",
      "JsonObject",
      "JButton",
      "JDialog",
      "JFrame",
      "JList",
      "JMenuBar",
      "JPanel",
      "JPopupMenu",
      "JScrollPane",
      "JsonObject",
      "JButton",
      "JDialog",
      "JFrame",
      "JList",
      "JMenuBar",
      "JPanel",
      "JPopupMenu",
      "JScrollPane",
      "JsonObject",
      "JButton",
      "JDialog",
      "JFrame",
      "JList",
      "JMenuBar",
      "JPanel",
      "JPopupMenu",
      "JScrollPane",
      "JsonObject",
      "JButton",
      "JDialog",
      "JFrame",
      "JList",
      "JMenuBar",
      "JPanel",
      "JPopupMenu",
      "JScrollPane",
      "JsonObject"
    ],
    "data": [
      "Ole",
      "OleConfig"
    ],
    "swing": [
      "AirTrafficControl",
      "LARVAAirTrafficControlTiles",
      "LARVACompactDash",
      "LARVADash",
      "LARVADialog",
      "LARVAEmbeddedDash",
      "LARVAFrame",
      "LARVAMiniDash",
      "Ole3DApplication",
      "Ole3DPane",
      "OleApplication",
      "OleButton",
      "OleDialog",
      "OleDrawPane",
      "OleFrame",
      "OleList",
      "OleMenuBar",
      "OleScrollPane",
      "OleToolBar",
      "SwingTools"
    ],
    "agents": [
      "DeathStar"
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
      "Circle3D",
      "Entity3D",
      "Line3D",
      "Point3D",
      "Polygon3D",
      "Scene3D",
      "String3D",
      "Vector3D"
    ],
    "glossary": [
      
    ],
    "larva": [
      
    ],
    "map2D": [
      "Map2DColor"
    ],
    "messaging": [
      
    ],
    "ontology": [
      
    ],
    "sessions": [
      
    ],
    "telegram": [
      
    ],
    "tools": [
      
    ],
    "world": [
      
    ]
  },
  "format": {
    "data": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "swing": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "agents": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "appboot": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "basher": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "console": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "crypto": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "database": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "disk": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "factoryagent": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "geometry": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "glossary": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "larva": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "map2D": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "messaging": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "ontology": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "sessions": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "telegram": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "tools": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "world": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "extern": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "gray",
      "color": "black"
    },
    "extends": "[arrowhead=onormal, penwidth=1, color=black]",
    "owns": "[style=dotted,arrowhead=odiamond, penwidth=1,color=blue]"
  }
}