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
        "OlePassport": [
          
        ]
      },
      {
        "JFrame": [
          "OleFrame"
        ]
      },
      {
        "JScrollPane": [
          
        ]
      },
      {
        "OleApplication": [
          
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
  "class": {
    "extern": [
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
      "JScrollPane",
      "JPanel",
      "OleBitmapPane",
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