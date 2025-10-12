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
    "map2D",
    "messaging",
    "ontology",
    "swing",
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
      
    ],
    "owns": [
      {
        "Choice": [
          "DecisionSet"
        ]
      },
      {
        "DecisionSet": [
          "Choice"
        ]
      }
    ]
  },
  "publicmethods": {
    "Choice": [
      "Choice(Point3D p)",
      "boolean isEqualTo(Choice other)",
      "String getName()",
      "Choice setName(String label)",
      "double getUtility()",
      "Choice setMaxUtility(double utility)",
      "Choice setMinUtility(double utility)",
      "Choice setUtility(double utility)",
      "boolean isValid()",
      "Choice setValid(boolean eligible)",
      "int compareTo(Object o)",
      "String toString()",
      "Choice getParent()",
      "void setParent(Choice parent)",
      "DecisionSet getChildren()",
      "void setChildren(DecisionSet children)",
      "Point3D getPosition()",
      "void setPosition(Point3D position)",
      "double getG()",
      "void setG(double g)",
      "double getH()",
      "void setH(double h)",
      "int calculateDepth()",
      "int getDepth()",
      "void setDepth(int depth)",
      "boolean equals(Choice c)",
      "boolean inPosition(Choice other)",
      "boolean inProximity(Choice other)",
      "static boolean isIncreasing()",
      "static void setIncreasing()",
      "static void setDecreasing()"
    ],
    "DecisionSet": [
      "DecisionSet addChoice(Choice c)",
      "DecisionSet addChoiceMinor(Choice c)",
      "DecisionSet addChoiceMajor(Choice c)",
      "Choice getChoice(String label)",
      "boolean containsChoice(Choice c)",
      "int findChoice(Choice c)",
      "DecisionSet sort()",
      "DecisionSet sortAscending()",
      "DecisionSet sortDescending()",
      "DecisionSet extractEligibles()",
      "Choice BestChoice()",
      "Choice SecondBestChoice()",
      "Choice getChoice(int i)",
      "Choice getChoice(Choice c)",
      "DecisionSet removeChoice(int i)",
      "DecisionSet removeChoice(Choice c)",
      "Choice popBestChoice()",
      "DecisionSet reOrder(Choice c)",
      "String toString()"
    ]
  },
  "class": {
    "extern": [
      
    ],
    "Environment": [
      
    ],
    "agents": [
      
    ],
    "ai": [
      "Choice",
      "DecisionSet"
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
    "map2D": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "Cyan",
      "color": "black"
    },
    "messaging": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "LightBlue",
      "color": "black"
    },
    "ontology": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "Indigo",
      "color": "black"
    },
    "swing": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "DarkSeaGreen",
      "color": "black"
    },
    "tools": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "Crimson",
      "color": "black"
    },
    "world": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "Orchid",
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