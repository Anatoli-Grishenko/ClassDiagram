{
  "classtypes": [
    "Environment",
    "agents",
    "ai",
    "appboot",
    "basher",
    "console",
    "crypto",
    "data",
    "database",
    "disk",
    "geometry",
    "glossary",
    "hack2",
    "map2D",
    "messaging",
    "ontology",
    "swing",
    "telegram2",
    "tools",
    "world",
    "zip",
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
          "AgentLARVAFull",
          "LARVADialogicalAgent"
        ]
      },
      {
        "AgentLARVAFull": [
          "FirstBrawlerSingle"
        ]
      },
      {
        "LARVADialogicalAgent": [
          "AgentDialogicFull"
        ]
      },
      {
        "LARVABaseAgent": [
          "LARVAFirstAgent"
        ]
      },
      {
        "AgentDialogicFull": [
          "DialogicBrawlerSingle"
        ]
      },
      {
        "FirstBrawlerSingle": [
          "FirstBrawlerSmash"
        ]
      },
      {
        "Agent": [
          "LARVABaseAgent"
        ]
      },
      {
        "DialogicBrawlerSingle": [
          "DialogicBrawlerSmash"
        ]
      }
    ],
    "owns": [
      {
        "DialogicBrawlerSmash": [
          
        ]
      },
      {
        "DialogicBrawlerSingle": [
          
        ]
      },
      {
        "LARVABaseAgent": [
          
        ]
      },
      {
        "FirstBrawlerSingle": [
          
        ]
      },
      {
        "LARVAFirstAgent": [
          
        ]
      },
      {
        "AgentLARVAFull": [
          
        ]
      },
      {
        "FirstBrawlerSmash": [
          
        ]
      },
      {
        "AgentDialogicFull": [
          
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
      "Agent",
      "Agent",
      "AgentDialogicFull",
      "AgentLARVAFull",
      "Agent",
      "AgentDialogicFull",
      "AgentLARVAFull",
      "Agent",
      "AgentDialogicFull",
      "AgentLARVAFull"
    ],
    "Environment": [
      
    ],
    "agents": [
      "LARVABaseAgent",
      "LARVADialogicalAgent",
      "LARVAFirstAgent"
    ],
    "ai": [
      
    ],
    "appboot": [
      
    ],
    "basher": [
      
    ],
    "console": [
      
    ],
    "crypto": [
      
    ],
    "data": [
      
    ],
    "database": [
      
    ],
    "disk": [
      
    ],
    "geometry": [
      
    ],
    "glossary": [
      
    ],
    "hack2": [
      "DialogicBrawlerSingle",
      "DialogicBrawlerSmash",
      "FirstBrawlerSingle",
      "FirstBrawlerSmash"
    ],
    "map2D": [
      
    ],
    "messaging": [
      
    ],
    "ontology": [
      
    ],
    "swing": [
      
    ],
    "telegram2": [
      
    ],
    "tools": [
      
    ],
    "world": [
      
    ],
    "zip": [
      
    ]
  },
  "format": {
    "Environment": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "Chartreuse",
      "color": "black"
    },
    "agents": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "MediumSpringGreen",
      "color": "black"
    },
    "ai": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "Turquoise",
      "color": "black"
    },
    "appboot": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "CadetBlue",
      "color": "black"
    },
    "basher": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "MediumAquaMarine",
      "color": "black"
    },
    "console": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "Thistle",
      "color": "black"
    },
    "crypto": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "LightSteelBlue",
      "color": "black"
    },
    "data": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "DarkViolet",
      "color": "black"
    },
    "database": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "BlueViolet",
      "color": "black"
    },
    "disk": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "DarkOliveGreen",
      "color": "black"
    },
    "geometry": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "Aqua",
      "color": "black"
    },
    "glossary": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "OliveDrab",
      "color": "black"
    },
    "hack2": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "Cyan",
      "color": "black"
    },
    "map2D": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "LightBlue",
      "color": "black"
    },
    "messaging": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "Indigo",
      "color": "black"
    },
    "ontology": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "DarkSeaGreen",
      "color": "black"
    },
    "swing": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "Crimson",
      "color": "black"
    },
    "telegram2": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "Orchid",
      "color": "black"
    },
    "tools": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "DarkGreen",
      "color": "black"
    },
    "world": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "Salmon",
      "color": "black"
    },
    "zip": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "RebeccaPurple",
      "color": "black"
    },
    "extern": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "gray",
      "color": "black"
    },
    "extends": "[arrowhead=onormal, penwidth=1, color=black]",
    "owns": "[style=dotted,arrowhead=odiamond, penwidth=1,color=blue]"
  }
}