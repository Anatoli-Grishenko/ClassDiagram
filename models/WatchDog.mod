{
  "classtypes": [
    "Environment",
    "Main",
    "agents",
    "ai",
    "appboot",
    "basher",
    "console",
    "crypto",
    "data",
    "database",
    "disk",
    "factoryagent",
    "first",
    "games",
    "geometry",
    "georeference",
    "glossary",
    "map2D",
    "messaging",
    "models",
    "ontology",
    "profiling",
    "sessions",
    "swing",
    "telegram",
    "telegram2",
    "tools",
    "watchpremium",
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
          "Domestic"
        ]
      },
      {
        "Domestic": [
          "ControlPanel",
          "Hub",
          "Notifier",
          "Sensor"
        ]
      },
      {
        "Notifier": [
          
        ]
      }
    ],
    "owns": [
      {
        "WDSensors": [
          
        ]
      },
      {
        "Domestic": [
          "WDConfiguration",
          "WDSensors"
        ]
      },
      {
        "WDConfiguration": [
          
        ]
      },
      {
        "LARVAFirstAgent": [
          
        ]
      },
      {
        "Sensor": [
          
        ]
      },
      {
        "Hub": [
          
        ]
      },
      {
        "ControlPanel": [
          
        ]
      },
      {
        "TelegramBot": [
          "LARVAFirstAgent"
        ]
      },
      {
        "Notifier": [
          
        ]
      },
      {
        "WatchPremium": [
          
        ]
      }
    ]
  },
  "class": {
    "extern": [
      
    ],
    "Environment": [
      
    ],
    "Main": [
      
    ],
    "agents": [
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
    "factoryagent": [
      
    ],
    "first": [
      "ControlPanel",
      "Domestic",
      "Hub",
      "Notifier",
      "Sensor",
      "TelegramBot"
    ],
    "games": [
      
    ],
    "geometry": [
      
    ],
    "georeference": [
      
    ],
    "glossary": [
      
    ],
    "map2D": [
      
    ],
    "messaging": [
      
    ],
    "models": [
      "WDConfiguration",
      "WDSensors"
    ],
    "ontology": [
      
    ],
    "profiling": [
      
    ],
    "sessions": [
      
    ],
    "swing": [
      
    ],
    "telegram": [
      
    ],
    "telegram2": [
      
    ],
    "tools": [
      
    ],
    "watchpremium": [
      "WatchPremium"
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
    "Main": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "MediumSpringGreen",
      "color": "black"
    },
    "agents": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "Turquoise",
      "color": "black"
    },
    "ai": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "CadetBlue",
      "color": "black"
    },
    "appboot": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "MediumAquaMarine",
      "color": "black"
    },
    "basher": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "Thistle",
      "color": "black"
    },
    "console": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "LightSteelBlue",
      "color": "black"
    },
    "crypto": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "DarkViolet",
      "color": "black"
    },
    "data": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "BlueViolet",
      "color": "black"
    },
    "database": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "DarkOliveGreen",
      "color": "black"
    },
    "disk": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "Aqua",
      "color": "black"
    },
    "factoryagent": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "OliveDrab",
      "color": "black"
    },
    "first": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "Cyan",
      "color": "black"
    },
    "games": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "LightBlue",
      "color": "black"
    },
    "geometry": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "Indigo",
      "color": "black"
    },
    "georeference": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "DarkSeaGreen",
      "color": "black"
    },
    "glossary": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "Crimson",
      "color": "black"
    },
    "map2D": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "Orchid",
      "color": "black"
    },
    "messaging": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "DarkGreen",
      "color": "black"
    },
    "models": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "Salmon",
      "color": "black"
    },
    "ontology": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "RebeccaPurple",
      "color": "black"
    },
    "profiling": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "MediumSlateBlue",
      "color": "black"
    },
    "sessions": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "DodgerBlue",
      "color": "black"
    },
    "swing": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "PaleTurquoise",
      "color": "black"
    },
    "telegram": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "Fuchsia",
      "color": "black"
    },
    "telegram2": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "Violet",
      "color": "black"
    },
    "tools": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "DarkTurquoise",
      "color": "black"
    },
    "watchpremium": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "Blue",
      "color": "black"
    },
    "world": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "SpringGreen",
      "color": "black"
    },
    "zip": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "DarkSlateBlue",
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