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
          "OleConfig",
          "OleSensor"
        ]
      },
      {
        "Thing": [
          
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
          "Perceptor"
        ]
      },
      {
        "Compass": [
          "direction"
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
          "OleConfig"
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
        "sensors": [
          
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
      "int getStepLevel(int x, int y)",
      "Color getColor(int x, int y)",
      "int getStepLevel(double x, double y)",
      "Map2DColor setLevel(int x, int y, int level)",
      "Map2DColor setColor(int x, int y, Color c)",
      "Map2DColor setLevel(double x, double y, int level)",
      "boolean hasMap()"
    ],
    "Thing": [
      "Thing(String name, World w)",
      "Thing setType(String c)",
      "String getType()",
      "World getWorld()",
      "Thing setSurface(Map2DColor cartography)",
      "Map2DColor getSurface()",
      "int getEnergy()",
      "int getOnTarget()",
      "int getAlive()",
      "int getPayload()",
      "Thing placeAtSurface(Point3D p)",
      "Thing addSensor(Perceptor p)",
      "JsonObject readPerceptions()",
      "int sizePerceptions()",
      "JsonObject toJson()",
      "String toString()"
    ],
    "Entity3D": [
      "Entity3D(Point3D position, Color color)",
      "Entity3D()",
      "Point3D getCenter()",
      "Entity3D  setCenter(Point3D _center)",
      "String getName()",
      "String getId()",
      "final Entity3D setPosition(Point3D p)",
      "Color getColor()",
      "Entity3D setColor(Color _color)",
      "Point3D getPosition()",
      "final Entity3D setSize(Point3D p)",
      "Point3D getSize()",
      "Entity3D setName(String _name)",
      "int getDimension()",
      "Entity3D setOrientation(int orientation)",
      "int getOrientation()",
      "Vector3D getVector()",
      "Entity3D move(Vector3D shift)",
      "Entity3D moveForward(int units)",
      "Entity3D moveUp(int units)",
      "Entity3D moveDown(int units)",
      "static int rotateLeft(int sdirection)",
      "static int rotateRight(int sdirection)",
      "static int Opposite(int sdirection)",
      "Entity3D rotateLeft()",
      "Entity3D rotateRight()",
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
      "Point3D placeAtMap(String where, ArrayList<Double> pos)",
      "String loadConfig(String worldconfigfilename)",
      "OleConfig getConfig()",
      "World setOntology(Ontology o)",
      "Ontology getOntology()",
      "World setEnvironment(String name)",
      "Thing getEnvironment()",
      "Thing addThing(Thing i, PROPERTY[] visible)",
      "void removeThing(Thing i)",
      "Thing addThing(String name, PROPERTY[] visible)",
      "Thing addThing(String name, String type, PROPERTY[] visible)",
      "Thing getThing(String id)",
      "Thing getThingByName(String name)",
      "boolean findThing(String id)",
      "Set<String> listThings()",
      "ArrayList<String> getAllThings(String type)",
      "World addVisible(PROPERTY c, Thing t)",
      "ArrayList<Thing> getDetectableList(Perceptor p)",
      "JsonObject getPerception(Perceptor p)",
      "String getSpalette()"
    ],
    "SensorDecoder": [
      "boolean setWorldMap(String content, int maxlevel)",
      "int getMaxlevel()",
      "void setMaxlevel(int maxlevel)",
      "String getStatus()",
      "String getSessionID()",
      "void setSessionID(String sessionID)",
      "Map2DColor getWorldMap()",
      "boolean hasSensor(String sensorname)",
      "void setSensor(String sensorname, JsonArray reading)",
      "void clear()",
      "boolean getAlive()",
      "boolean getOnTarget()",
      "boolean isReady()",
      "double[] getGPS()",
      "int getPayload()",
      "int getCompass()",
      "int getAltitude()",
      "double getDistance()",
      "double getAngular()",
      "double getAngular(Point3D p)",
      "double getEnergy()",
      "double getEnergyBurnt()",
      "String[] getTrace()",
      "String[] getCargo()",
      "int getNSteps()",
      "int[][] getVisualData()",
      "int[][] getLidarData()",
      "int[][] getThermalData()",
      "JsonObject toJson()",
      "Ole toOle()",
      "void fromJson(JsonArray jsareading)",
      "void fromOle(ArrayList<Ole> oreading)",
      "String getName()",
      "String getSession()",
      "void feedPerception(String content)",
      "String getCommitment()",
      "void setCommitment(String commitment)",
      "String [] getSensorList()"
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
      "JsonArray getSensor(String sensorname)",
      "double[] fromJsonArray(JsonArray jsa)"
    ]
  },
  "class": {
    "extern": [
      "JsonObject",
      "JsonObject"
    ],
    "data": [
      "Ole",
      "OleConfig",
      "OleSensor"
    ],
    "swing": [
      "Angular"
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
      "direction",
      "sensors"
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