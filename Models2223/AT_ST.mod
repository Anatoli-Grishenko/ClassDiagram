{
  "classtypes": [
    "ATST",
    "Environment",
    "Main",
    "STF",
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
    "map2D",
    "messaging",
    "ontology",
    "swing",
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
        "AT_ST_BASIC_SURROUND": [
          
        ]
      },
      {
        "LARVAFirstAgent": [
          "AT_ST"
        ]
      },
      {
        "AT_ST_DIRECTDRIVE": [
          "AT_ST_BASIC_AVOID",
          "STF_DIRECT_DRIVE"
        ]
      },
      {
        "STF_BASIC_SURROUND": [
          
        ]
      },
      {
        "AT_ST_BASIC_AVOID": [
          "AT_ST_BASIC_SURROUND"
        ]
      },
      {
        "LARVABaseAgent": [
          "LARVAFirstAgent"
        ]
      },
      {
        "AT_ST": [
          "AT_ST_DIRECTDRIVE"
        ]
      },
      {
        "Agent": [
          "LARVABaseAgent"
        ]
      },
      {
        "STF_DIRECT_DRIVE": [
          "STF_BASIC_AVOID"
        ]
      },
      {
        "STF_BASIC_AVOID": [
          "STF_BASIC_SURROUND"
        ]
      }
    ],
    "owns": [
      {
        "LARVABaseAgent": [
          
        ]
      },
      {
        "AT_ST": [
          
        ]
      },
      {
        "STF_BASIC_AVOID": [
          
        ]
      },
      {
        "AT_ST_BASIC_SURROUND": [
          
        ]
      },
      {
        "LARVAFirstAgent": [
          
        ]
      },
      {
        "STF_BASIC_SURROUND": [
          
        ]
      },
      {
        "AT_ST_DIRECTDRIVE": [
          
        ]
      },
      {
        "AT_ST_BASIC_AVOID": [
          
        ]
      },
      {
        "STF_DIRECT_DRIVE": [
          
        ]
      }
    ]
  },
  "class": {
    "extern": [
      "Agent",
      "Agent",
      "Agent"
    ],
    "ATST": [
      "AT_ST",
      "AT_ST_BASIC_AVOID",
      "AT_ST_BASIC_SURROUND",
      "AT_ST_DIRECTDRIVE"
    ],
    "Environment": [
      
    ],
    "Main": [
      
    ],
    "STF": [
      "STF_BASIC_AVOID",
      "STF_BASIC_SURROUND",
      "STF_DIRECT_DRIVE"
    ],
    "agents": [
      "LARVABaseAgent",
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
    "map2D": [
      
    ],
    "messaging": [
      
    ],
    "ontology": [
      
    ],
    "swing": [
      
    ],
    "tools": [
      
    ],
    "world": [
      
    ],
    "zip": [
      
    ]
  },
  "format": {
    "ATST": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "Chartreuse",
      "color": "black"
    },
    "Environment": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "MediumSpringGreen",
      "color": "black"
    },
    "Main": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "Turquoise",
      "color": "black"
    },
    "STF": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "CadetBlue",
      "color": "black"
    },
    "agents": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "MediumAquaMarine",
      "color": "black"
    },
    "ai": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "Thistle",
      "color": "black"
    },
    "appboot": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "LightSteelBlue",
      "color": "black"
    },
    "basher": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "DarkViolet",
      "color": "black"
    },
    "console": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "BlueViolet",
      "color": "black"
    },
    "crypto": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "DarkOliveGreen",
      "color": "black"
    },
    "data": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "Aqua",
      "color": "black"
    },
    "database": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "OliveDrab",
      "color": "black"
    },
    "disk": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "Cyan",
      "color": "black"
    },
    "geometry": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "LightBlue",
      "color": "black"
    },
    "glossary": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "Indigo",
      "color": "black"
    },
    "map2D": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "DarkSeaGreen",
      "color": "black"
    },
    "messaging": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "Crimson",
      "color": "black"
    },
    "ontology": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "Orchid",
      "color": "black"
    },
    "swing": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "DarkGreen",
      "color": "black"
    },
    "tools": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "Salmon",
      "color": "black"
    },
    "world": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "RebeccaPurple",
      "color": "black"
    },
    "zip": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "MediumSlateBlue",
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