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
        "ArrayList<Choice>": [
          "DecisionSet",
          "Plan"
        ]
      },
      {
        "LARVAFirstAgent": [
          
        ]
      },
      {
        "Search": [
          "AStar",
          "Greedy"
        ]
      }
    ],
    "owns": [
      {
        "Map2DColor": [
          
        ]
      },
      {
        "Greedy": [
          "Map2DColor"
        ]
      },
      {
        "Plan": [
          
        ]
      },
      {
        "Choice": [
          "DecisionSet"
        ]
      },
      {
        "LARVAFirstAgent": [
          "Environment",
          "DecisionSet"
        ]
      },
      {
        "AStar": [
          "Map2DColor"
        ]
      },
      {
        "Subsumption": [
          "DecisionSet",
          "Choice",
          "Environment"
        ]
      },
      {
        "Search": [
          "DecisionSet",
          "Choice",
          "Map2DColor"
        ]
      },
      {
        "DecisionSet": [
          "Choice"
        ]
      },
      {
        "Environment": [
          
        ]
      }
    ]
  },
  "class": {
    "extern": [
      "ArrayList<Choice>",
      "ArrayList<Choice>",
      "AStar",
      "Choice",
      "DecisionSet",
      "Environment",
      "Greedy",
      "Search",
      "Subsumption",
      "Plan",
      "ArrayList<Choice>"
    ],
    "data": [
      
    ],
    "swing": [
      
    ],
    "agents": [
      "LARVAFirstAgent"
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
      "fontsize": 6,
      "fillcolor": "white",
      "color": "black"
    },
    "swing": {
      "face": "Arial",
      "fontsize": 6,
      "fillcolor": "white",
      "color": "black"
    },
    "agents": {
      "face": "Arial",
      "fontsize": 6,
      "fillcolor": "white",
      "color": "black"
    },
    "appboot": {
      "face": "Arial",
      "fontsize": 6,
      "fillcolor": "white",
      "color": "black"
    },
    "basher": {
      "face": "Arial",
      "fontsize": 6,
      "fillcolor": "white",
      "color": "black"
    },
    "console": {
      "face": "Arial",
      "fontsize": 6,
      "fillcolor": "white",
      "color": "black"
    },
    "crypto": {
      "face": "Arial",
      "fontsize": 6,
      "fillcolor": "white",
      "color": "black"
    },
    "database": {
      "face": "Arial",
      "fontsize": 6,
      "fillcolor": "white",
      "color": "black"
    },
    "disk": {
      "face": "Arial",
      "fontsize": 6,
      "fillcolor": "white",
      "color": "black"
    },
    "factoryagent": {
      "face": "Arial",
      "fontsize": 6,
      "fillcolor": "white",
      "color": "black"
    },
    "geometry": {
      "face": "Arial",
      "fontsize": 6,
      "fillcolor": "white",
      "color": "black"
    },
    "glossary": {
      "face": "Arial",
      "fontsize": 6,
      "fillcolor": "white",
      "color": "black"
    },
    "larva": {
      "face": "Arial",
      "fontsize": 6,
      "fillcolor": "white",
      "color": "black"
    },
    "map2D": {
      "face": "Arial",
      "fontsize": 6,
      "fillcolor": "white",
      "color": "black"
    },
    "messaging": {
      "face": "Arial",
      "fontsize": 6,
      "fillcolor": "white",
      "color": "black"
    },
    "ontology": {
      "face": "Arial",
      "fontsize": 6,
      "fillcolor": "white",
      "color": "black"
    },
    "sessions": {
      "face": "Arial",
      "fontsize": 6,
      "fillcolor": "white",
      "color": "black"
    },
    "telegram": {
      "face": "Arial",
      "fontsize": 6,
      "fillcolor": "white",
      "color": "black"
    },
    "tools": {
      "face": "Arial",
      "fontsize": 6,
      "fillcolor": "white",
      "color": "black"
    },
    "world": {
      "face": "Arial",
      "fontsize": 6,
      "fillcolor": "white",
      "color": "black"
    },
    "extern": {
      "face": "Arial",
      "fontsize": 6,
      "fillcolor": "gray",
      "color": "black"
    },
    "extends": "[arrowhead=onormal, penwidth=1, color=black]",
    "owns": "[style=dotted,arrowhead=odiamond, penwidth=1,color=blue]"
  }
}