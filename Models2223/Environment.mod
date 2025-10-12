{
  "classtypes": [
    "Environment",
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
        "Environment": [
          
        ]
      }
    ]
  },
  "publicmethods": {
    "Environment": [
      "boolean loadWorld(String worldname, String name, Roles r, Sensors attach[])",
      "Environment setExternalPerceptions(String perceptions)",
      "Environment setExternalObjects(String things)",
      "Environment clone()",
      "Environment simmulate(Choice a)",
      "void cache()",
      "int[][] getShortRadar()",
      "int[][] getShortDistances()",
      "int[] getShortPolar()",
      "int[][] getShortLidar()",
      "int[][] getShortVisual()",
      "int getLidarFront()",
      "int getLidarLeft()",
      "int getLidarLeftmost()",
      "int getLidarRight()",
      "int getLidarRightmost()",
      "int getVisualFront()",
      "int getVisualLeft()",
      "int getVisualLeftmost()",
      "int getVisualRight()",
      "int getVisualRightmost()",
      "int getVisualHere()",
      "int getLidarHere()",
      "boolean isCrahsed()",
      "boolean isEnergyExhausted()",
      "boolean isFreeFront()",
      "boolean isFreeFrontLeft()",
      "boolean isFreeFrontRight()",
      "boolean isFreeLeft()",
      "boolean isFreeRight()",
      "boolean isTargetAhead()",
      "boolean isTargetFront()",
      "boolean isTargetBack()",
      "boolean isTargetLeft()",
      "boolean isTargetRight()",
      "boolean isTargetFrontLeft()",
      "boolean isTargetFrontRight()",
      "boolean isTargetLeftmost()",
      "boolean isTargetRightmost()",
      "ThingSet getFullCadastre()",
      "String[] getCitiesAround(int radius)",
      "String[] getCitiesAround(Point3D p, int radius)",
      "String[] getCityList()",
      "Point3D getCityPosition(String city)",
      "Mission getCurrentMission()",
      "void setCurrentMission(String missionName)",
      "void makeCurrentMission(String missionString)",
      "void setCurrentMission(String missionName, String goals[])",
      "void setCurrentMission(Mission m)",
      "String getCurrentGoal()",
      "void setCurrentGoal(String goal)",
      "String setNextGoal()",
      "String getCurrentCity()",
      "String getDestinationCity()",
      "Environment(Environment other)",
      "Environment addThings(ArrayList<Thing> listT)",
      "Environment readInternalPerceptions()",
      "boolean executeInternalAction(String action)",
      "boolean isEquivalentTo(Environment other)",
      "boolean willBeAlive()",
      "int[][] getShortGeneral(int[][] data)",
      "int[][] getPolarGeneral(int[][] data)",
      "int[][] getAbsoluteGeneral(int[][] data)",
      "int[][] getRelativeGeneral(int[][] data)",
      "int getHereGeneral(int[][] data)",
      "int getFrontGeneral(int[][] data)",
      "int getLeftGeneral(int[][] data)",
      "int getLeftmostGeneral(int[][] data)",
      "int getRightGeneral(int[][] data)",
      "int getRightmostGeneral(int[][] data)",
      "int getSlope()",
      "int isMemoryVector()",
      "int isMemoryGPS(Point3D current)",
      "int isMemoryGPSVector(SimpleVector3D current)",
      "ThingSet getCensus()"
    ]
  },
  "class": {
    "extern": [
      
    ],
    "Environment": [
      "Environment"
    ]
  },
  "format": {
    "Environment": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "Chartreuse",
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