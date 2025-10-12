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
    "main",
    "map2D",
    "messaging",
    "models",
    "ontology",
    "swing",
    "telegram2",
    "tools",
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
        "Thing": [
          
        ]
      },
      {
        "ThingSet": [
          
        ]
      },
      {
        "Entity3D": [
          "Thing"
        ]
      }
    ],
    "owns": [
      {
        "TimeTable": [
          
        ]
      },
      {
        "Thing": [
          
        ]
      },
      {
        "Entity3D": [
          
        ]
      },
      {
        "Scheduler": [
          "ThingSet"
        ]
      },
      {
        "ThingSet": [
          
        ]
      }
    ]
  },
  "publicmethods": {
    "TimeTable": [
      "int getNAgents()",
      "int getNOccurrences(String resource)",
      "Assignment getLast(String name)",
      "int getMakespan()",
      "ArrayList<Assignment> getAllOCurrences(String resource)",
      "void addAssignment(Assignment a)",
      "String getSolution(String who)",
      "Assignment getEarlierAssignment(int time)"
    ],
    "Thing": [
      "Thing(String name, World w)",
      "World getWorld()",
      "Thing setSurface(Map2DColor cartography)",
      "Map2DColor getSurface()",
      "Thing placeAtSurface(Point3D p)",
      "Thing addSensor(Perceptor p)",
      "JsonObject getPerceptions()",
      "JsonObject getMinimalPerceptions()",
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
      "int compare(Entity3D one, Entity3D other)",
      "double getCapacity()",
      "void setCapacity(double _capacity)",
      "String getKey()",
      "void setKey(String _key)",
      "String getType()",
      "void setType(String _type)",
      "boolean isAvailable()",
      "void setAvailable(boolean _available)",
      "double getMaxCapacity()",
      "void setMaxCapacity(double _maxCapacity)"
    ],
    "Scheduler": [
      "Layout2D getMap()",
      "void setMap(Layout2D Map)",
      "ThingSet getDeliveries()",
      "void setDeliveries(ThingSet Deliveries)",
      "ThingSet getResources()",
      "void setResources(ThingSet Resources)",
      "ThingSet getOrder()",
      "void setOrder(ThingSet Order)",
      "TimeTable solveQuick()"
    ],
    "ThingSet": [
      "int size()",
      "void clear()",
      "Ontology getOntology()",
      "void setOntology(Ontology ontology)",
      "String getTypeFilter()",
      "ThingSet setTypeFilter(String typeFilter)",
      "ArrayList<String> getAllNames()",
      "ArrayList<String> getAllTypes()",
      "ArrayList<String> getAllBelong()",
      "ArrayList<String> getAllPosition()",
      "ThingSet fromJson(JsonArray reading)",
      "ThingSet addThing(JsonObject jsothing)",
      "ThingSet addThing(Thing t)",
      "ThingSet removeThing(Thing t)",
      "ThingSet reIndexThing(Thing t)",
      "boolean belongs(Thing t)",
      "Thing getThing(String name)",
      "ArrayList<Thing> getAllThings()",
      "ArrayList<Thing> splitListByType(String type)",
      "ArrayList<Thing> splitListByBelong(String type)",
      "ThingSet splitSetByType(String type)",
      "JsonObject toJson()",
      "boolean loadFromTSVFile(String filename)"
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
      "Entity3D"
    ],
    "glossary": [
      
    ],
    "main": [
      
    ],
    "map2D": [
      
    ],
    "messaging": [
      
    ],
    "models": [
      "Scheduler",
      "TimeTable"
    ],
    "ontology": [
      
    ],
    "swing": [
      
    ],
    "telegram2": [
      
    ],
    "tools": [
      
    ],
    "world": [
      "Thing",
      "ThingSet"
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
    "main": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "Cyan",
      "color": "black"
    },
    "map2D": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "LightBlue",
      "color": "black"
    },
    "messaging": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "Indigo",
      "color": "black"
    },
    "models": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "DarkSeaGreen",
      "color": "black"
    },
    "ontology": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "Crimson",
      "color": "black"
    },
    "swing": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "Orchid",
      "color": "black"
    },
    "telegram2": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "DarkGreen",
      "color": "black"
    },
    "tools": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "Salmon",
      "color": "black"
    },
    "world": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "RebeccaPurple",
      "color": "black"
    },
    "zip": {
      "face": "Courier New",
      "fontsize": 9,
      "fillcolor": "MediumSlateBlue",
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