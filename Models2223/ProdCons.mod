{
  "classtypes": [
    "CentralizedDialogue",
    "Dialogical",
    "First",
    "Main",
    "OpenDialogue",
    "SequentialDialogue",
    "agents",
    "extern"
  ],
  "relationtypes": [
    "extends",
    "owns"
  ],
  "relation": {
    "extends": [
      {
        "LARVAFirstAgent": [
          "LARVADialogicalAgent",
          "PCNonDialogical"
        ]
      },
      {
        "PCDialogical": [
          "OWordFollower",
          "OWordStarter",
          "OpenWordPlayer"
        ]
      },
      {
        "LARVADialogicalAgent": [
          "PCDialogical"
        ]
      },
      {
        "LARVABaseAgent": [
          "LARVAFirstAgent"
        ]
      },
      {
        "Agent": [
          "LARVABaseAgent"
        ]
      },
      {
        "PCNonDialogical": [
          "ProductionController",
          "WordConsumer",
          "WordFollower",
          "WordProducer",
          "WordStarter"
        ]
      }
    ],
    "owns": [
      {
        "OWordFollower": [
          
        ]
      },
      {
        "OpenWordPlayer": [
          
        ]
      },
      {
        "WordProducer": [
          
        ]
      },
      {
        "WordStarter": [
          
        ]
      },
      {
        "LARVABaseAgent": [
          
        ]
      },
      {
        "LARVAFirstAgent": [
          
        ]
      },
      {
        "OWordStarter": [
          
        ]
      },
      {
        "PCNonDialogical": [
          
        ]
      },
      {
        "WordFollower": [
          
        ]
      },
      {
        "WordConsumer": [
          
        ]
      },
      {
        "ProductionController": [
          
        ]
      },
      {
        "PCDialogical": [
          
        ]
      },
      {
        "LARVADialogicalAgent": [
          
        ]
      }
    ]
  },
  "class": {
    "extern": [
      "Agent",
      "Agent"
    ],
    "CentralizedDialogue": [
      "ProductionController",
      "WordConsumer",
      "WordProducer"
    ],
    "Dialogical": [
      "PCDialogical"
    ],
    "First": [
      "PCNonDialogical"
    ],
    "Main": [
      
    ],
    "OpenDialogue": [
      "OWordFollower",
      "OWordStarter",
      "OpenWordPlayer"
    ],
    "SequentialDialogue": [
      "WordFollower",
      "WordStarter"
    ],
    "agents": [
      "LARVABaseAgent",
      "LARVADialogicalAgent",
      "LARVAFirstAgent"
    ]
  },
  "format": {
    "CentralizedDialogue": {
      "face": "Courier New",
      "fontsize": 4,
      "fillcolor": "Chartreuse",
      "color": "black"
    },
    "Dialogical": {
      "face": "Courier New",
      "fontsize": 4,
      "fillcolor": "MediumSpringGreen",
      "color": "black"
    },
    "First": {
      "face": "Courier New",
      "fontsize": 4,
      "fillcolor": "Turquoise",
      "color": "black"
    },
    "Main": {
      "face": "Courier New",
      "fontsize": 4,
      "fillcolor": "CadetBlue",
      "color": "black"
    },
    "OpenDialogue": {
      "face": "Courier New",
      "fontsize": 4,
      "fillcolor": "MediumAquaMarine",
      "color": "black"
    },
    "SequentialDialogue": {
      "face": "Courier New",
      "fontsize": 4,
      "fillcolor": "Thistle",
      "color": "black"
    },
    "agents": {
      "face": "Courier New",
      "fontsize": 4,
      "fillcolor": "LightSteelBlue",
      "color": "black"
    },
    "extern": {
      "face": "Courier New",
      "fontsize": 4,
      "fillcolor": "gray",
      "color": "black"
    },
    "extends": "[arrowhead=onormal, penwidth=1, color=black]",
    "owns": "[style=dotted,arrowhead=odiamond, penwidth=1,color=blue]"
  }
}