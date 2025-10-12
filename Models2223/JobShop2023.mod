{
  "classtypes": [
    "Agents",
    "Network",
    "StrongHierarchy",
    "jobshop",
    "extern"
  ],
  "relationtypes": [
    "extends",
    "owns"
  ],
  "relation": {
    "extends": [
      {
        "HMachine": [
          "HMCutter1",
          "HMCutterPRO",
          "HMDrillA",
          "HMDrillB",
          "HMPolisher"
        ]
      },
      {
        "AgentJobShop": [
          "AgentProducer",
          "HController",
          "HMachine",
          "NController",
          "NMachine"
        ]
      },
      {
        "LARVAFirstAgent": [
          "AgentJobShop"
        ]
      },
      {
        "NMachine": [
          "NMCutter1",
          "NMCutterPRO",
          "NMDrillA",
          "NMDrillB",
          "NMPolisher"
        ]
      }
    ],
    "owns": [
      {
        "HMachine": [
          
        ]
      },
      {
        "AgentJobShop": [
          
        ]
      },
      {
        "HController": [
          
        ]
      },
      {
        "NMCutter1": [
          
        ]
      },
      {
        "HMCutterPRO": [
          
        ]
      },
      {
        "NMPolisher": [
          
        ]
      },
      {
        "NMCutterPRO": [
          
        ]
      },
      {
        "JobShop": [
          
        ]
      },
      {
        "HMPolisher": [
          
        ]
      },
      {
        "NController": [
          
        ]
      },
      {
        "HMCutter1": [
          
        ]
      },
      {
        "AgentProducer": [
          
        ]
      },
      {
        "HMDrillB": [
          
        ]
      },
      {
        "NMDrillA": [
          
        ]
      },
      {
        "NMDrillB": [
          
        ]
      },
      {
        "NMachine": [
          
        ]
      },
      {
        "HMDrillA": [
          
        ]
      }
    ]
  },
  "class": {
    "extern": [
      "LARVAFirstAgent",
      "LARVAFirstAgent"
    ],
    "Agents": [
      "AgentJobShop",
      "AgentProducer"
    ],
    "Network": [
      "NController",
      "NMCutter1",
      "NMCutterPRO",
      "NMDrillA",
      "NMDrillB",
      "NMPolisher",
      "NMachine"
    ],
    "StrongHierarchy": [
      "HController",
      "HMCutter1",
      "HMCutterPRO",
      "HMDrillA",
      "HMDrillB",
      "HMPolisher",
      "HMachine"
    ],
    "jobshop": [
      "JobShop"
    ]
  },
  "format": {
    "Agents": {
      "face": "Courier New",
      "fontsize": 4,
      "fillcolor": "Chartreuse",
      "color": "black"
    },
    "Network": {
      "face": "Courier New",
      "fontsize": 4,
      "fillcolor": "MediumSpringGreen",
      "color": "black"
    },
    "StrongHierarchy": {
      "face": "Courier New",
      "fontsize": 4,
      "fillcolor": "Turquoise",
      "color": "black"
    },
    "jobshop": {
      "face": "Courier New",
      "fontsize": 4,
      "fillcolor": "CadetBlue",
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