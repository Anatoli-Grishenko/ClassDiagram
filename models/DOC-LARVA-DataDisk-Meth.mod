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
        "OleDataBase": [
          
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
          "OleSet",
          "OleTable"
        ]
      },
      {
        "OlePassport": [
          "AdminPassport"
        ]
      },
      {
        "Cryptor": [
          "AdminCryptor"
        ]
      },
      {
        "OleSensor": [
          
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
          "Cryptor"
        ]
      },
      {
        "Cryptor": [
          
        ]
      },
      {
        "Roles": [
          
        ]
      },
      {
        "SequenceDiagram": [
          
        ]
      },
      {
        "TimeHandler": [
          
        ]
      },
      {
        "OleTable": [
          
        ]
      },
      {
        "Keygen": [
          
        ]
      },
      {
        "Transform": [
          
        ]
      },
      {
        "OleDialog": [
          "OleConfig"
        ]
      },
      {
        "Basher": [
          
        ]
      },
      {
        "AdminPassport": [
          
        ]
      },
      {
        "AdminCryptor": [
          
        ]
      },
      {
        "ReportableObject": [
          
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
        "Ontology": [
          
        ]
      },
      {
        "TokenList": [
          
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
        "OleConfig": [
          
        ]
      },
      {
        "OleReport": [
          
        ]
      }
    ]
  },
  "publicmethods": {
    "Ole": [
      "static Ole Json2Ole(JsonObject jsole)",
      "static JsonObject Ole2PlainJson(Ole odata)",
      "static List<String> allNames(JsonObject jso)",
      "Ole()",
      "Ole(JsonObject jsole)",
      "Ole(String s)",
      "Ole clear()",
      "boolean isOle()",
      "boolean isEmpty()",
      "Ole set(String s)",
      "Ole fromJson(JsonObject jsole)",
      "JsonObject toPlainJson()",
      "String toString(WriterConfig wcon)",
      "String toString()",
      "Ole parse(String s)",
      "boolean checkField(String fieldName)",
      "Ole addField(String fieldName)",
      "Ole setID(String id)",
      "Ole setType(String type)",
      "Ole setDate(String date)",
      "Ole setDescription(String description)",
      "Ole setOle()",
      "String getID()",
      "String getType()",
      "String getDate()",
      "String getDescription()",
      "List<String> getFieldList()",
      "String getFieldType(String field)",
      "String getValueType(JsonValue jsv)",
      "final Ole getOle(String field)",
      "Ole set(String field, boolean value)",
      "Ole set(String field, int value)",
      "Ole set(String field, double value)",
      "Ole set(String field, String value)",
      "Ole set(String field, JsonArray value)",
      "Ole set(String field, Ole value)",
      "boolean isEncrypted()",
      "Ole onEncryption(Cryptor myc)",
      "Ole offEncryption()",
      "Cryptor getCryptor()",
      "Ole loadFile(String fullfilename)",
      "final String getField(String field)",
      "final boolean getBoolean(String field)",
      "final int getInt(String field)",
      "final double getDouble(String field)",
      "final String getString(String field)",
      "final ArrayList getArray(String field)",
      "final Ole setField(String fieldname, String value)",
      "final Ole setField(String fieldname, int value)",
      "final Ole setField(String fieldname, double value)",
      "final Ole setField(String fieldname, boolean value)",
      "final Ole setField(String fieldname, ArrayList<Object> value)",
      "final Ole setField(String fieldname, Ole value)",
      "final Ole addToField(String fieldname, String v)",
      "final Ole addToField(String fieldname, int v)",
      "final Ole addToField(String fieldname, double v)",
      "final Ole addToField(String fieldname, boolean v)",
      "final Ole addToField(String fieldname, Ole v)",
      "Ole setFieldGeneric(String field, Object s)"
    ],
    "Cryptor": [
      "Cryptor(String k)",
      "Cryptor(String cs, String k)",
      "void setCryptoKey(String k)",
      "String getCryptoKey()",
      "String getCharSet()",
      "void setCharSet(String s)",
      "String enCrypt(String text)",
      "String deCrypt(String text)",
      "String enCrypt64(String text)",
      "String deCrypt64(String text)"
    ],
    "SequenceDiagram": [
      "int size()",
      "int getNPlayers()",
      "void addPlayer(String name)",
      "String getPlayer(int i)",
      "int indexPlayer(String name)",
      "void nextLine()",
      "void printPlayers()",
      "String fillField(String base, char fill)",
      "void printEmptyPlayers()",
      "void printDate(Sequence s)",
      "void printContent(Sequence s)",
      "void printRW(Sequence s)",
      "void printIRT(Sequence s)",
      "void printPerformative(Sequence s)",
      "void printArrow(Sequence s)",
      "void getSequenceDiagram(String filename, String agentname)",
      "void addSequence(String sender, String receiver, String content)",
      "void addSequence(ACLMessage msg)",
      "String printSequenceDiagram()"
    ],
    "Keygen": [
      "static String getHexaKey()",
      "static String getAlphaNumKey(int length)",
      "static String getWordo(int length)",
      "static String getHexaKey(int length)"
    ],
    "OleFile": [
      "OleFile(Ole o)",
      "OleFile loadFile(String fullfilename)",
      "boolean saveFile(String outputfolder)",
      "String getStringContent()",
      "String getFileName()"
    ],
    "OlePassport": [
      "OlePassport(Ole o)",
      "Ole loadPassport(String fullfilename)",
      "Passport=sload.split(separator)[0];",
      "setField(\"name\",this.getCryptor().deCrypt64(Passport));",
      "int getUserID()",
      "String getCid()",
      "String getAlias()",
      "String getEmail()",
      "String getName()",
      "OlePassport setUserID(String uid)",
      "OlePassport setCid(String ucid)",
      "OlePassport setAlias(String ualias)",
      "OlePassport setEmail(String uemail)",
      "OlePassport setName(String uname)"
    ],
    "OleConfig": [
      "OleConfig(Ole o)",
      "Ole getProperties()",
      "Ole getProperties(String sfield)",
      "Ole getOptions()",
      "int numTabs()",
      "List<String> getAllTabNames()",
      "Ole getTab(String stab)",
      "List<String> getAllTabFields(String stab)"
    ]
  },
  "class": {
    "extern": [
      "JsonObject",
      "JsonObject",
      "JsonObject"
    ],
    "data": [
      "AdminPassport",
      "Ole",
      "OleConfig",
      "OleDot",
      "OleFile",
      "OlePassport",
      "OleQuery",
      "OleReport",
      "OleSet",
      "OleTable",
      "TokenList",
      "Transform"
    ],
    "swing": [
      "OleDialog",
      "OleSensor"
    ],
    "agents": [
      
    ],
    "appboot": [
      
    ],
    "basher": [
      "Basher"
    ],
    "console": [
      
    ],
    "crypto": [
      "AdminCryptor",
      "Cryptor",
      "Keygen"
    ],
    "database": [
      "OleDataBase"
    ],
    "disk": [
      
    ],
    "factoryagent": [
      
    ],
    "geometry": [
      
    ],
    "glossary": [
      "Roles"
    ],
    "larva": [
      
    ],
    "map2D": [
      
    ],
    "messaging": [
      "SequenceDiagram"
    ],
    "ontology": [
      "Ontology"
    ],
    "sessions": [
      
    ],
    "telegram": [
      
    ],
    "tools": [
      "ReportableObject",
      "TimeHandler"
    ],
    "world": [
      
    ]
  },
  "format": {
    "data": {
      "face": "Arial",
      "fontsize": 16,
      "fillcolor": "white",
      "color": "black"
    },
    "swing": {
      "face": "Arial",
      "fontsize": 16,
      "fillcolor": "white",
      "color": "black"
    },
    "agents": {
      "face": "Arial",
      "fontsize": 16,
      "fillcolor": "white",
      "color": "black"
    },
    "appboot": {
      "face": "Arial",
      "fontsize": 16,
      "fillcolor": "white",
      "color": "black"
    },
    "basher": {
      "face": "Arial",
      "fontsize": 16,
      "fillcolor": "white",
      "color": "black"
    },
    "console": {
      "face": "Arial",
      "fontsize": 16,
      "fillcolor": "white",
      "color": "black"
    },
    "crypto": {
      "face": "Arial",
      "fontsize": 16,
      "fillcolor": "white",
      "color": "black"
    },
    "database": {
      "face": "Arial",
      "fontsize": 16,
      "fillcolor": "white",
      "color": "black"
    },
    "disk": {
      "face": "Arial",
      "fontsize": 16,
      "fillcolor": "white",
      "color": "black"
    },
    "factoryagent": {
      "face": "Arial",
      "fontsize": 16,
      "fillcolor": "white",
      "color": "black"
    },
    "geometry": {
      "face": "Arial",
      "fontsize": 16,
      "fillcolor": "white",
      "color": "black"
    },
    "glossary": {
      "face": "Arial",
      "fontsize": 16,
      "fillcolor": "white",
      "color": "black"
    },
    "larva": {
      "face": "Arial",
      "fontsize": 16,
      "fillcolor": "white",
      "color": "black"
    },
    "map2D": {
      "face": "Arial",
      "fontsize": 16,
      "fillcolor": "white",
      "color": "black"
    },
    "messaging": {
      "face": "Arial",
      "fontsize": 16,
      "fillcolor": "white",
      "color": "black"
    },
    "ontology": {
      "face": "Arial",
      "fontsize": 16,
      "fillcolor": "white",
      "color": "black"
    },
    "sessions": {
      "face": "Arial",
      "fontsize": 16,
      "fillcolor": "white",
      "color": "black"
    },
    "telegram": {
      "face": "Arial",
      "fontsize": 16,
      "fillcolor": "white",
      "color": "black"
    },
    "tools": {
      "face": "Arial",
      "fontsize": 16,
      "fillcolor": "white",
      "color": "black"
    },
    "world": {
      "face": "Arial",
      "fontsize": 16,
      "fillcolor": "white",
      "color": "black"
    },
    "extern": {
      "face": "Arial",
      "fontsize": 16,
      "fillcolor": "gray",
      "color": "black"
    },
    "extends": "[arrowhead=onormal, penwidth=1, color=black]",
    "owns": "[style=dotted,arrowhead=odiamond, penwidth=1,color=blue]"
  }
}