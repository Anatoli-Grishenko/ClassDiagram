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
        "JsonObject": [
          "Ole"
        ]
      },
      {
        "Ole": [
          "OleConfig"
        ]
      },
      {
        "Vector3D": [
          
        ]
      },
      {
        "Thing": [
          
        ]
      },
      {
        "SensorDecoder": [
          
        ]
      },
      {
        "OleSensor": [
          
        ]
      },
      {
        "Entity3D": [
          "Line3D",
          "Polygon3D",
          "String3D",
          "Thing"
        ]
      }
    ],
    "owns": [
      {
        "Ole": [
          
        ]
      },
      {
        "Vector3D": [
          "Point3D"
        ]
      },
      {
        "Map2DColor": [
          
        ]
      },
      {
        "Thing": [
          "World",
          "Map2DColor",
          "Point3D",
          "Perceptor",
          "SensorDecoder"
        ]
      },
      {
        "Compass": [
          
        ]
      },
      {
        "Line3D": [
          "Point3D"
        ]
      },
      {
        "Entity3D": [
          
        ]
      },
      {
        "capability": [
          
        ]
      },
      {
        "Scene3D": [
          "Entity3D"
        ]
      },
      {
        "Polygon3D": [
          "Point3D"
        ]
      },
      {
        "World": [
          "Thing",
          "OleConfig",
          "Point3D"
        ]
      },
      {
        "OleSensor": [
          
        ]
      },
      {
        "Point3D": [
          
        ]
      },
      {
        "String3D": [
          
        ]
      },
      {
        "Angular": [
          
        ]
      },
      {
        "direction": [
          
        ]
      },
      {
        "SensorDecoder": [
          "Map2DColor"
        ]
      },
      {
        "Perceptor": [
          "Thing"
        ]
      },
      {
        "OleConfig": [
          
        ]
      }
    ]
  },
  "publicmethods": {
    "Map2DColor": [
      "Map2DColor(int width, int height)",
      "Map2DColor(int width, int height, int level)",
      "Map2DColor(int width, int height, Color c)",
      "Map2DColor loadMapNormalize(String filename) throws IOException",
      "Map2DColor loadMapRaw(String filename) throws IOException",
      "Map2DColor shiftLeft(int pix)",
      "int correctAlphaLevel(int level)",
      "Map2DColor saveMap(String filename) throws IOException",
      "int getWidth()",
      "BufferedImage getMap()",
      "int getHeight()",
      "int getMinHeight()",
      "int getMaxHeight()",
      "int getRawLevel(int x, int y)",
      "int getRawLevel(SimpleVector3D p)",
      "int getStepLevel(int x, int y)",
      "int getStepLevel(SimpleVector3D p)",
      "Color getColor(int x, int y)",
      "Color getColor(SimpleVector3D p)",
      "int getStepLevel(double x, double y)",
      "Map2DColor setLevel(int x, int y, int level)",
      "Map2DColor setColor(int x, int y, Color c)",
      "Map2DColor setColor(SimpleVector3D p, Color c)",
      "Map2DColor setLevel(double x, double y, int level)",
      "Map2DColor setLevel(SimpleVector3D p, int level)",
      "boolean hasMap()",
      "int getStepLevel(Point3D p)",
      "Map2DColor setLevel(Point3D p, int level)",
      "int getRawLevel(Point3D p)",
      "Map2DColor setColor(Point3D p, Color c)",
      "Map2DColor toLevelCurve(int step)",
      "int getCurveLevel(int x, int y, int step)"
    ],
    "Thing": [
      "Thing(String name, World w)",
      "void setType(String c)",
      "String getType()",
      "World getWorld()",
      "Thing setSurface(Map2DColor cartography)",
      "Map2DColor getSurface()",
      "Thing placeAtSurface(Point3D p)",
      "Thing addSensor(Perceptor p)",
      "JsonObject getPerceptions()",
      "void readPerceptions()",
      "int sizePerceptions()",
      "JsonObject toJson()",
      "void fromJson(JsonObject o)",
      "String toString()",
      "boolean isHasHeliport()",
      "void setHasHeliport(boolean hasHeliport)",
      "boolean isHasPort()",
      "void setHasPort(boolean hasPort)",
      "boolean isHasAirport()",
      "void setHasAirport(boolean hastAirport)",
      "SensorDecoder Raw()",
      "String getBelongsTo()",
      "void setBelongsTo(String _belongsTo)"
    ],
    "Entity3D": [
      "Entity3D(Point3D position, Color color)",
      "Entity3D(SimpleVector3D vposition, Color color)",
      "Entity3D()",
      "Point3D getCenter()",
      "Entity3D  setCenter(Point3D _center)",
      "String getName()",
      "String getId()",
      "final Entity3D setPosition(Point3D p)",
      "final Entity3D setPosition(SimpleVector3D p)",
      "Color getColor()",
      "Entity3D setColor(Color _color)",
      "Point3D getPosition()",
      "SimpleVector3D getVector()",
      "final Entity3D setSize(Point3D p)",
      "Point3D getSize()",
      "Entity3D setName(String _name)",
      "int getDimension()",
      "Entity3D setOrientation(int orientation)",
      "int getOrientation()",
      "boolean contains(Point3D p)",
      "int compareTo(Entity3D other)",
      "int compare(Entity3D one, Entity3D other)"
    ],
    "Scene3D": [
      "void addEntity3D(Entity3D o)",
      "Entity3D getObject(String name)",
      "ArrayList<Entity3D> getAllObjects(Point3D reference)",
      "int size()",
      "Scene3D clearAll()"
    ],
    "World": [
      "String getSurfaceName()",
      "void setSurfaceName(String surface)",
      "String getName()",
      "Point3D placeAtMap(Point3D initial)",
      "Point3D placeAtMap(String where, Point3D initial)",
      "void saveConfig(String worldconfigfilename)",
      "String loadConfig(String worldconfigfilename)",
      "OleConfig getConfig()",
      "World setOntology(Ontology o)",
      "Ontology getOntology()",
      "World setEnvironment(String name)",
      "Thing getEnvironment()",
      "Thing addThing(Thing i, PROPERTY[] visible)",
      "void removeAllThings()",
      "void removeThing(Thing i)",
      "Thing addThing(String name, String type, PROPERTY[] visible)",
      "Thing getThing(String id)",
      "boolean findThing(String id)",
      "ArrayList<Thing> splitListAllThings(String type)",
      "ThingSet splitSetAllThings(String type)",
      "World addVisibility(PROPERTY c, Thing t)",
      "ThingSet getDetectableList(Perceptor p)",
      "JsonObject getPerception(Perceptor p)",
      "String getSpalette()",
      "Thing getThingByName(String name)",
      "ArrayList<String> getAllThingsNear(String from, String type, int radius)",
      "Point3D getClosestDocking(Point3D ptentative)",
      "liveBot registerAgent(String name, String type, int bx, int by, Sensors[] attach)",
      "boolean execAgent(liveBot agent, String action)",
      "boolean isAppropriate(liveBot agent, String location)",
      "ArrayList<Point3D> findCourse(liveBot agent, Point3D pdestination)",
      "Point3D getDestination()",
      "void setDestination(Point3D destination)",
      "Point3D getStart()",
      "void setStart(Point3D start)",
      "void printSummary()"
    ],
    "SensorDecoder": [
      "boolean setWorldMap(String content, int maxlevel)",
      "boolean setWorldMap(String content)",
      "boolean loadWorldMap(String name)",
      "boolean loadWorldMap(Map2DColor map)",
      "void encodeSensor(String sensorname, JsonArray reading)",
      "void encodeSensor(Sensors s, JsonArray reading)",
      "void encodeSensor(Sensors s, double value)",
      "void encodeSensor(Sensors s, boolean value)",
      "void encodeSensor(Sensors s, double[] value)",
      "void encodeSensor(Sensors s, String[] value)",
      "void encodeSensor(Sensors s, String value)",
      "static JsonArray encodeValues(double d)",
      "static JsonArray encodeValues(boolean b)",
      "static JsonArray encodeValues(String s)",
      "static JsonArray encodeValues(double[] d)",
      "static JsonArray encodeValues(String[] d)",
      "void clear()",
      "Map2DColor getWorldMap()",
      "int getWorldWidth()",
      "int getWorldHeight()",
      "String getName()",
      "void setName(String Name)",
      "void setType(String type)",
      "String getTeam()",
      "void setTeam(String Team)",
      "String getStatus()",
      "void setStatus(String Status)",
      "void addStatus(String Status)",
      "String getSessionid()",
      "void setSessionid(String Sessionid)",
      "String getCommitment()",
      "void setCommitment(String Commitment)",
      "int getCompass()",
      "void setCompass(int Compass)",
      "int getGround()",
      "void setGround(int Ground)",
      "int getEnergy()",
      "void setEnergy(int Energy)",
      "int getPayload()",
      "void setPayload(int Payload)",
      "int getNumsteps()",
      "void setNumsteps(int Numsteps)",
      "int getRange()",
      "void setRange(int Range)",
      "int getEnergyburnt()",
      "void setEnergyburnt(int Energyburnt)",
      "int getTime()",
      "void setTime(int Time)",
      "int getMaxlevel()",
      "void setMaxlevel(int Maxlevel)",
      "int getMinlevel()",
      "void setMinlevel(int Minlevel)",
      "int getMaxslope()",
      "void setMaxslope(int Maxslope)",
      "int getMaxcargo()",
      "void setMaxcargo(int Maxcargo)",
      "int getAutonomy()",
      "void setAutonomy(int Autonomy)",
      "int getBurnratemove()",
      "void setBurnratemove(int Burnratemove)",
      "int getBurnrateread()",
      "void setBurnrateread(int Burnrateread)",
      "boolean getOntarget()",
      "boolean getOnDestination()",
      "void setOntarget(boolean Ontarget)",
      "boolean getAlive()",
      "void setAlive(boolean Alive)",
      "String[] getCargo()",
      "void setCargo(String[] Cargo)",
      "void addCargo(String Value)",
      "void removeCargo(String Value)",
      "String[] getTrace()",
      "void setTrace(String[] Trace)",
      "void addTrace(String Value)",
      "void removeTrace(String Value)",
      "String[] getPeople()",
      "void setPeople(String[] People)",
      "String[] getCapabilities()",
      "void setCapabilities(String[] Capabilities)",
      "void addCapabilities(String Value)",
      "void removeCapabilities(String Value)",
      "Point3D getTarget()",
      "void setTarget(Point3D Target)",
      "Point3D getGPS()",
      "Point3D getGPSMemory(int i)",
      "int getGPSMemory(Point3D s)",
      "int getGPSMemorySize()",
      "void setGPS(Point3D GPS)",
      "Point3D getDestination()",
      "void setDestination(Point3D destination)",
      "double getAltitude()",
      "SimpleVector3D getGPSVector()",
      "SimpleVector3D getGPSVectorMemory(int old)",
      "int getGPSVectorMemory(SimpleVector3D s)",
      "int getOrientation()",
      "Point3D getGPSComingPosition()",
      "double getDistance()",
      "double getAngular()",
      "int getCompassLeft()",
      "int getCompassRight()",
      "double getRelativeAngular()",
      "double getRelativeAngularto(Point3D p)",
      "double getAbsoluteAngular()",
      "double getAbsoluteAngularTo(Point3D p)",
      "double getAbsoluteAngularTo(Point3D orig, Point3D dest)",
      "double getRelativeAngularto(Point3D orig, int compass, Point3D dest)",
      "int getNSteps()",
      "Map2DColor getFullZenitalVisual()",
      "int[][] getPolarCourse()",
      "int[][] getPolarVisual()",
      "int[][] getPolarLidar()",
      "int[][] getPolarThermal()",
      "int[][] getAbsoluteLidar()",
      "int[][] getAbsoluteThermal()",
      "int[][] getAbsoluteVisual()",
      "int[][] getRelativeVisual()",
      "int[][] getRelativeLidar()",
      "int[][] getRelativeThermal()",
      "int[][] getCourseData()",
      "int[][] getVisualData()",
      "int[][] getLidarData()",
      "int[][] getThermalData()",
      "double[][] getCourse()",
      "int sizeCourse()",
      "void cleanCourse()",
      "Point3D getCourse(int i)",
      "void addCourse(Point3D p)",
      "void activateCourse()",
      "void nextCourse()",
      "int findNextCourseIndex()",
      "JsonObject toJson()",
      "JsonObject toJson(Sensors[] whichones)",
      "Ole toOle()",
      "void fromJson(JsonObject jsoreading)",
      "void fromJson(JsonArray jsareading)",
      "void fromOle(ArrayList<Ole> oreading)",
      "void feedPerception(JsonObject jsoperception)",
      "void feedPerception(String content)",
      "String[] getSensorList()",
      "String printStatus(String requester)",
      "String printStatusExtended()",
      "double getTargetDistance()",
      "double getTargetAbsoluteAngular()",
      "double getTargetRelativeAngular()",
      "double get3DDistance()",
      "int getGridDistance()",
      "double getPlaneDistance()",
      "String getType()"
    ]
  },
  "protectedmethods": {
    "Map2DColor": [
      "Map2DColor normalize()",
      "Color applyAlphaLevel(Color c)"
    ],
    "Thing": [
      
    ],
    "Entity3D": [
      
    ],
    "Scene3D": [
      
    ],
    "World": [
      "boolean filterReading(int x, int y, int range, int orientation)"
    ],
    "SensorDecoder": [
      "JsonArray getSensor(Sensors s)",
      "JsonArray getSensor(String sensorname)",
      "double[] fromJsonArray(JsonArray jsa)"
    ]
  },
  "class": {
    "extern": [
      "JsonObject",
      "JsonObject",
      "sensors"
    ],
    "data": [
      "Ole",
      "OleConfig"
    ],
    "swing": [
      "Angular",
      "OleSensor"
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
      
    ],
    "disk": [
      
    ],
    "factoryagent": [
      
    ],
    "geometry": [
      "Compass",
      "Entity3D",
      "Line3D",
      "Point3D",
      "Polygon3D",
      "Scene3D",
      "String3D",
      "Vector3D"
    ],
    "glossary": [
      "capability",
      "direction"
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
      "Perceptor",
      "SensorDecoder",
      "Thing",
      "World"
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