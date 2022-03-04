{
  "classtypes": [
    "data",
    "larva"
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
        "AdminPassport": [
          
        ]
      },
      {
        "AdminCryptor": [
          
        ]
      },
      {
        "DBA2122": [
          
        ]
      },
      {
        "DataBaser": [
          
        ]
      }
    ]
  },
  "methods": {
    "AdminCryptor": [
      "public AdminCryptor(String k)",
      "public String keyPradoEncode(int pradocode)",
      "public int keyPradoDecode(String pradocode)",
      "public String enCrypt(String text)",
      "public String deCrypt(String text)"
    ]
  },
  "class": {
    "data": [
      "AdminPassport"
    ],
    "larva": [
      "DataBaser"
    ]
  },
  "format": {
    "data": {
      "face": "Arial",
      "fontsize": 24,
      "fillcolor": "Chartreuse",
      "color": "black"
    },
    "larva": {
      "face": "Arial",
      "fontsize": 24,
      "fillcolor": "MediumSpringGreen",
      "color": "black"
    },
    "extends": "[arrowhead=onormal, penwidth=2, color=black]",
    "owns": "[style=dotted,arrowhead=odiamond, penwidth=2,color=blue]"
  }
}