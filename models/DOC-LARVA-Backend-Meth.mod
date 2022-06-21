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
          "DBA2122"
        ]
      },
      {
        "JsonObject": [
          "Ole"
        ]
      },
      {
        "Ole": [
          "OleFile",
          "OleQuery",
          "OleTable"
        ]
      },
      {
        "LARVABaseAgent": [
          "LARVAAdminAgent"
        ]
      },
      {
        "Agent": [
          "LARVABaseAgent"
        ]
      },
      {
        "LARVAAdminAgent": [
          "DataBaser"
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
          
        ]
      },
      {
        "SentenceBuilder": [
          "OleDataBase"
        ]
      },
      {
        "TimeHandler": [
          
        ]
      },
      {
        "DataBaser": [
          
        ]
      },
      {
        "LARVABaseAgent": [
          "OleFile"
        ]
      },
      {
        "OleTable": [
          
        ]
      },
      {
        "Transform": [
          
        ]
      },
      {
        "Sentence": [
          
        ]
      },
      {
        "OleFile": [
          
        ]
      },
      {
        "LARVAAdminAgent": [
          "DBA2122",
          "Ole",
          "TimeHandler",
          "Sentence"
        ]
      },
      {
        "DBA2122": [
          "Ole",
          "OleTable"
        ]
      },
      {
        "OleDataBase": [
          "Ole",
          "OleTable",
          "SentenceBuilder"
        ]
      },
      {
        "TokenList": [
          
        ]
      }
    ]
  },
  "publicmethods": {
    "OleQuery": [
      "OleQuery(Ole o)",
      "OleQuery Pair(String field, Object o)",
      "OleQuery Condition(String field, String comp, Object o)"
    ],
    "SentenceBuilder": [
      "SentenceBuilder clear()",
      "SentenceBuilder Op(SQLOP o)",
      "SentenceBuilder Table(String t)",
      "SentenceBuilder Column(String column)",
      "SentenceBuilder Pair(String column, String value)",
      "SentenceBuilder Condition(String column, String comp, String value)",
      "String toString()"
    ],
    "OleTable": [
      "OleTable(Ole o)",
      "boolean isEmpty()",
      "OleTable(ResultSet rs)",
      "JsonArray rawRows()",
      "OleTable addRow(Ole o)",
      "Ole getRow(int r)",
      "Ole getRow(String field, int value)",
      "Ole getRow(String field, String value)",
      "ArrayList<Ole> getAllRows()",
      "ArrayList<Ole> getAllRows(String field, String value)",
      "ArrayList<Ole> getAllRows(String field, int value)",
      "OleTable getAllRowsOleTable(String field, String value)",
      "OleTable getAllRowsOleTable(String field, int value)",
      "int size()",
      "String prettyprint()"
    ],
    "Sentence": [
      "String getSentence()",
      "String getPastSentence()",
      "String getFutureSentence()",
      "String getCursorSentence()",
      "Sentence parseSentence(String sentence)",
      "boolean hasNext()",
      "String next()",
      "String next(int many)",
      "boolean isNext(String tok)",
      "boolean isNext(String tok1, String tok2)",
      "boolean isNext(String tok1, String tok2, String tok3)",
      "int size()"
    ],
    "OleDataBase": [
      "boolean defineConnection(String host, int port, String database, String user, String password)",
      "boolean openConnection()",
      "String getURL()",
      "final void closeConnection()",
      "void emergencyClose()",
      "boolean isOpen()",
      "boolean isError()",
      "boolean canContinue()",
      "void flushError()",
      "void validationQuery()",
      "void startCommit() throws SQLException",
      "void endCommit() throws SQLException",
      "void rollBack()",
      "void openTransaction()",
      "void closeTransaction()",
      "OleTable DBObjectQuery(String table, OleQuery oq)",
      "boolean DBObjectDelete(String table, OleQuery oq)",
      "boolean DBObjectUpdate(String table, OleQuery find, OleQuery update)",
      "boolean DBObjectUpdateUnique(String table, OleQuery find, OleQuery update)",
      "OleTable DBquery(String sentence)",
      "boolean DBupdate(String sentence)",
      "boolean DBinsert(String sentence)",
      "boolean DBdelete(String sentence)",
      "boolean isEmpty()",
      "void loadSchema()",
      "ArrayList<String> getTableList()",
      "ArrayList<String> getColumnList(String tablename)",
      "String getColumnType(String tablename, String columname)",
      "boolean getORM()",
      "of.println(\" class \"+this._database+\" \");",
      "of.println(\" OleDataBase db;\");",
      "of.println(\" OleTable \"+table+\"GetRow(OleQuery oq) \");",
      "of.println(\" OleTable \"+table+\"GetRow(String field, String value) \");",
      "String[] errorLog()",
      "void reportException(Exception Ex)",
      "void reportError(String which)",
      "String defReportType()",
      "String[] defReportableObjectList()",
      "String reportObjectStatus(String objectid)"
    ]
  },
  "protectedmethods": {
    "OleQuery": [
      
    ],
    "SentenceBuilder": [
      
    ],
    "OleTable": [
      
    ],
    "Sentence": [
      
    ],
    "OleDataBase": [
      "SentenceBuilder sentence(SQLOP o)",
      "OleTable DBSBquery(SentenceBuilder s)",
      "boolean DBSBupdate(SentenceBuilder s)",
      "boolean DBSBinsert(SentenceBuilder s)",
      "boolean DBSBdelete(SentenceBuilder s)",
      "ResultSet getResult()",
      "OleTable getOleTable()"
    ]
  },
  "class": {
    "extern": [
      "Agent",
      "JsonObject",
      "Agent",
      "JsonObject"
    ],
    "data": [
      "Ole",
      "OleFile",
      "OleQuery",
      "OleTable",
      "TokenList",
      "Transform"
    ],
    "swing": [
      
    ],
    "agents": [
      "LARVAAdminAgent",
      "LARVABaseAgent"
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
      "DBA2122",
      "OleDataBase",
      "SentenceBuilder"
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
      "DataBaser"
    ],
    "map2D": [
      
    ],
    "messaging": [
      "Sentence"
    ],
    "ontology": [
      
    ],
    "sessions": [
      
    ],
    "telegram": [
      
    ],
    "tools": [
      "TimeHandler"
    ],
    "world": [
      
    ]
  },
  "format": {
    "data": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "swing": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "agents": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "appboot": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "basher": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "console": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "crypto": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "database": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "disk": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "factoryagent": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "geometry": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "glossary": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "larva": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "map2D": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "messaging": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "ontology": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "sessions": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "telegram": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "tools": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "world": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "white",
      "color": "black"
    },
    "extern": {
      "face": "Arial",
      "fontsize": 12,
      "fillcolor": "gray",
      "color": "black"
    },
    "extends": "[arrowhead=onormal, penwidth=1, color=black]",
    "owns": "[style=dotted,arrowhead=odiamond, penwidth=1,color=blue]"
  }
}