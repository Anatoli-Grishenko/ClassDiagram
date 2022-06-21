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
      
    ],
    "owns": [
      {
        "DBA2122": [
          
        ]
      }
    ]
  },
  "publicmethods": {
    "DBA2122": [
      "DBA2122 cacheTables()",
      "int DBGetAgentID(String agentName)",
      "int DBGetProblemID(String problemName)",
      "int DBGetAsignmentID(String name)",
      "Ole DBGetAssignment(int assignmentID)",
      "Ole DBGetProblem(int problemID)",
      "Ole DBGetMilestone(String milestoneID)",
      "Ole DBGetUser(int userID)",
      "void DBAddUser(int userID, String name, String email)",
      "void DBFreeALias(String alias)",
      "String DBGetFreeALias()",
      "String DBAssignAlias(int userID)",
      "int DBGetUserCourse(int userID)",
      "Ole DBGetAllUsersCID(long cid)",
      "Ole DBGetGroup(int groupID)",
      "Ole DBGetUserGroup(int userID)",
      "OleTable DBGetUserFellows(int groupID)",
      "Ole DBGetCourse(int courseID)",
      "void addUserToGroup (int userID, int groupID)",
      "void clearGroup (int groupID)",
      "void DBAddUserMilestone(int userID, int problemID, String milestoneID, String sessionID, String date)",
      "void DBAddGroupMilestone(int userID, int problemID, String milestoneID, String sessionID, String date)",
      "OleSet DBGetProblemMilestones(int problemID)",
      "OleSet DBGetProblemUserMilestones(int userID, int problemID)",
      "void DBCleanProblemUserMilestones(int userID, int problemID)",
      "OleSet DBGetProblemGroupMilestones(int groupID, int problemID)",
      "OleSet DBGetAssignmentMilestones(int assignmentID)",
      "OleSet DBGetCourseMilestones(int courseID)",
      "OleSet DBGetAssignmentUserMilestones(int userID, int assignmentID)",
      "OleSet DBGetCourseUserMilestones(int userID, int courseID)",
      "OlePassport DBGetPassport(int userID)",
      "Ole DBGetUserCredentials(int userID)",
      "boolean DBHasUserNotifications(int userID, String noti)",
      "OleSet DBGetUserNotifications(int userID)",
      "void DBActivateUserNotifications(int userID, String subscription)",
      "void DBRemoveUserNotifications(int userID, String subscription)",
      "void DBDeleteChatUserID(int userID)",
      "void DBUpdateChatUserID(int userID, long cid)",
      "boolean DBIsChatSubscribedTelegram(long cid)",
      "ArrayList<Long> DBGetAllChatsSubscribedTelegram()",
      "boolean DBIsUserSubscribedTelegram(int userID)",
      "long DBGetUserCID(int userID)",
      "void DBOpenSession(int userID, String agentName, int problemID, String sessionID)",
      "void DBUpdateStatisticsSessionSession(String sessionID, OleQuery update)",
      "void DBCloseSession(String sessionID)",
      "OleTable DBGetOpenSessions()",
      "OleTable DBGetSession(String sessionID)",
      "OleTable DBGetUserSession(int userID)",
      "boolean DBIsSessionOpen(String sessionID)",
      "void DBDoBanAgent(String agentname, String bannedUntil)",
      "void DBUndoBanAgent(String agentname)",
      "boolean DBDoCheckInAgent(String agentname, int userID)",
      "void DBDoCheckInAgent(String agentname, int userID, String container)",
      "void DBDoCheckOutAgent(String agentname)",
      "int DBIsCheckedInAgent(String agentname)",
      "int DBWhoCheckedInAgent(String agentname)",
      "String DBBannedUntilAgent(String agentname)",
      "OleTable DBGetAllAgents()",
      "OleTable DBGetAllBannedAgents()",
      "OleTable DBGetAllExceptions()",
      "void DBAddException(String agentName, String title, String description)",
      "void DBClearExceptions()"
    ]
  },
  "protectedmethods": {
    "DBA2122": [
      
    ]
  },
  "class": {
    "extern": [
      
    ],
    "data": [
      
    ],
    "swing": [
      
    ],
    "agents": [
      
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
      "DBA2122"
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