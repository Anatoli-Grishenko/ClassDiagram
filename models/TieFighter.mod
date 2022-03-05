{
  "classtypes": [
    "agents",
    "data",
    "swing",
    "tiefighter",
    "tools"
  ],
  "relationtypes": [
    "extends",
    "owns"
  ],
  "relation": {
    "extends": [
      {
        "JScrollPane": [
          
        ]
      },
      {
        "JPanel": [
          
        ]
      },
      {
        "Agent": [
          "LARVABaseAgent"
        ]
      },
      {
        "LARVAFirstAgent": [
          "TieExplorer",
          "TieLeader",
          "TieShadow"
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
          "OleSensor"
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
          "MyPopup"
        ]
      },
      {
        "LARVABaseAgent": [
          "LARVAFirstAgent"
        ]
      },
      {
        "JFrame": [
          "LARVAFrame"
        ]
      },
      {
        "JDialog": [
          "LARVADialog"
        ]
      },
      {
        "JList": [
          
        ]
      }
    ],
    "owns": [
      {
        "Ole": [
          
        ]
      },
      {
        "MyPopup": [
          
        ]
      },
      {
        "Map2DColor": [
          
        ]
      },
      {
        "LARVADash": [
          "LARVAFrame",
          "MyPlainButton",
          "MyMapPalPane",
          "Map2DColor",
          "RoundProgressBar",
          "Angular",
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
        "MyMapPalPane": [
          "Map2DColor",
          "Palette",
          "MyPopup",
          "Point"
        ]
      },
      {
        "TimeHandler": [
          
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
          "Logger"
        ]
      },
      {
        "MyPlainButton": [
          "LARVAFrame"
        ]
      },
      {
        "Keygen": [
          
        ]
      },
      {
        "LARVACompactDash": [
          
        ]
      },
      {
        "LARVAEmbeddedDash": [
          "RoundProgressBar",
          "Angular",
          "TimeHandler"
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
          "SequenceDiagram"
        ]
      },
      {
        "TieLeader": [
          
        ]
      },
      {
        "RoundProgressBar": [
          
        ]
      },
      {
        "TieShadow": [
          
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
        "Palette": [
          
        ]
      },
      {
        "Ontology": [
          
        ]
      },
      {
        "TieExplorer": [
          
        ]
      },
      {
        "LARVAFrame": [
          
        ]
      },
      {
        "Angular": [
          
        ]
      },
      {
        "TieFighter": [
          
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
        "Point": [
          
        ]
      },
      {
        "Perceptor": [
          
        ]
      }
    ]
  },
  "class": {
    "agents": [
      "LARVABaseAgent",
      "LARVAFirstAgent"
    ],
    "data": [
      "Ole",
      "OleSensor"
    ],
    "swing": [
      "Angular",
      "LARVACompactDash",
      "LARVADash",
      "LARVADialog",
      "LARVAEmbeddedDash",
      "LARVAFrame",
      "LARVAMiniDash",
      "MyMapPalPane",
      "MyPlainButton",
      "MyPopup",
      "RoundProgressBar",
      "SwingTools"
    ],
    "tiefighter": [
      "TieExplorer",
      "TieFighter",
      "TieLeader",
      "TieShadow"
    ],
    "tools": [
      "Internet",
      "TimeHandler"
    ]
  },
  "format": {
    "agents": {
      "face": "Courier New",
      "fontsize": 24,
      "fillcolor": "Chartreuse",
      "color": "black"
    },
    "data": {
      "face": "Courier New",
      "fontsize": 24,
      "fillcolor": "MediumSpringGreen",
      "color": "black"
    },
    "swing": {
      "face": "Courier New",
      "fontsize": 24,
      "fillcolor": "Turquoise",
      "color": "black"
    },
    "tiefighter": {
      "face": "Courier New",
      "fontsize": 24,
      "fillcolor": "CadetBlue",
      "color": "black"
    },
    "tools": {
      "face": "Courier New",
      "fontsize": 24,
      "fillcolor": "MediumAquaMarine",
      "color": "black"
    },
    "extends": "[arrowhead=onormal, penwidth=2, color=black]",
    "owns": "[style=dotted,arrowhead=odiamond, penwidth=2,color=blue]"
  }
}