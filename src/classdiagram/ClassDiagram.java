/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classdiagram;

import basher.Basher;
import data.Ole;
import data.OleConfig;
import data.OleDot;
import data.OleFile;
import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Graphics2D;
import static java.awt.RenderingHints.KEY_ANTIALIASING;
import static java.awt.RenderingHints.VALUE_ANTIALIAS_ON;
import java.awt.event.ActionEvent;
import java.awt.event.ItemEvent;
import java.awt.event.KeyEvent;
import java.io.File;
import java.io.IOException;
import java.nio.file.FileSystems;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.border.Border;
import javax.swing.border.EmptyBorder;
import map2D.Map2DColor;
import swing.OleApplication;
import swing.OleBitmapPane;
import swing.OleDialog;
import swing.OleDrawPane;
import swing.SwingTools;
import tools.emojis;

/**
 *
 * @author Anatoli Grishenko <Anatoli.Grishenko@gmail.com>
 */
public class ClassDiagram {

    static OleConfig myConfig, myProject; //, myPreferrences;
    static OleApplication oMainFrame;
    static JPanel pSideTools, pStatus, pMain;
    static OleDrawPane opDiagram;
    static OleBitmapPane osDiagram;
    static String projectFile, modelFile, dotFile, pngFile, pdfFile;

    static ArrayList<String> allfilenames, allpackages, allclasses;
    static HashMap<String, String> allfilecontent;
    static HashMap<String, Integer> classusage;
    static HashMap<String, ArrayList<String>> allfullpackages, allextends, allowns, allmethods;
    static HashMap<String, Basher> allfilebasher;
    static String allcolours[] = new String[]{"Chartreuse", "MediumSpringGreen", "Turquoise", "CadetBlue", "MediumAquaMarine", "Thistle", "LightSteelBlue", "DarkViolet", "BlueViolet", "DarkOliveGreen", "Aqua", "OliveDrab", "Cyan", "LightBlue", "Indigo", "DarkSeaGreen", "Crimson", "Orchid", "DarkGreen", "Salmon", "RebeccaPurple", "MediumSlateBlue", "DodgerBlue", "PaleTurquoise", "Fuchsia", "Violet", "DarkTurquoise", "Blue", "SpringGreen", "DarkSlateBlue", "SkyBlue", "MediumBlue", "MidnightBlue", "IndianRed", "ForestGreen", "Lavender", "SlateBlue", "DarkMagenta", "Aquamarine", "DarkOrchid", "Lime", "Teal", "LightSeaGreen", "PowderBlue", "RoyalBlue", "Green", "Plum", "LimeGreen", "MediumOrchid", "FireBrick", "DarkRed", "MediumSeaGreen", "LightSkyBlue", "LightSalmon", "MediumTurquoise", "LightCoral", "DarkSalmon", "GreenYellow", "DeepSkyBlue", "MediumPurple", "LawnGreen", "CornflowerBlue", "PaleGreen", "SteelBlue", "Magenta", "LightCyan", "Navy", "Purple", "Red", "YellowGreen", "DarkCyan", "LightGreen", "SeaGreen", "DarkBlue"};
    static Map2DColor mapDiagram;
    static int ppp = 150;

    static int rpaint = 0;
    static OleDot ooutput;

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        myConfig = new OleConfig();
        myConfig.loadFile("config/classdiagram.app");
        if (myConfig.isEmpty()) {
            SwingTools.Error("Configuration file not found");
            System.exit(1);
        }
        oMainFrame = new OleApplication(myConfig) {
            @Override
            public void myActionListener(ActionEvent e) {
                frameActionListener(e);
            }

            @Override
            public void myKeyListener(KeyEvent e) {
                frameKeyListener(e);
            }

            @Override
            public void Draw(Graphics2D g) {
                paintDiagram(g);
            }
        };
        opDiagram = oMainFrame.getDrawingPane();
        osDiagram = oMainFrame.getScollPane();
        ooutput = new OleDot();
    }

    /////// LISTENERS
    public static void frameActionListener(ActionEvent e) {
        /// TBM
        if (e.getActionCommand().equals("SetZoom")) {
            String newZoom = oMainFrame.inputSelect("Select zoom", new String[]{"10", "5", "1.5", "1.25", "1", "0.75", "0.5", "0.25", "Fix to Width", "fix to Height"}, "1");
            if (newZoom != null) {
                if (newZoom.contains("Height")) {
                    osDiagram.setZoom(mapDiagram.getHeight() / oMainFrame.getHeight());
                } else if (newZoom.contains("Width")) {
                    osDiagram.setZoom(mapDiagram.getWidth() / oMainFrame.getWidth());
                } else {
                    osDiagram.setZoom(Double.parseDouble(newZoom));
                }
            }
        }
        if (e.getActionCommand().equals("SelectResolution")
                || e.getActionCommand().equals("SelectArrows")
                || e.getActionCommand().equals("SelectFont")) {
            OleDialog odClasses = new OleDialog(oMainFrame, "Display");
            odClasses.addActionListener((e2, c2) -> editProjectListener(e2, c2));
            if (odClasses.run(myProject, "Display")) {
                myProject = odClasses.getResult();
                ooutput.setWidth(myProject.getTab("Display").getOle("Output").getInt("Width", 16));
                ooutput.setHeight(myProject.getTab("Display").getOle("Output").getInt("Height", 16));
                ooutput.setFill(myProject.getTab("Display").getOle("Output").getBoolean("Fill", true));
                generateModel(myProject, true);
                showProjectSummary();
            }
        }
        if (e.getActionCommand().equals("Exit")) {
            if (oMainFrame.Confirm("Really want to exit?")) {
                oMainFrame.dispose();
                System.exit(0);
            }
        }
        if (e.getActionCommand().equals("NewProject")) {
            if (projectFile != null) {
                if (oMainFrame.Confirm("Save changes to project?")) {
                    if (projectFile != null) {
                        saveProject();
                    } else {
                        saveAsProject();
                    }
                }
            }
            projectFile = "./projects/nonamed.prj";
            myProject = new OleConfig();
            myProject.loadFile("projects/empty.prj");
            oMainFrame.setTitle(projectFile);
            oMainFrame.showInfo("New empy project ");
            editProject();
            osDiagram.setZoom(1);
            ooutput.setWidth(myProject.getTab("Display").getOle("Output").getInt("Width", 16));
            ooutput.setHeight(myProject.getTab("Display").getOle("Output").getInt("Height", 16));
            ooutput.setFill(myProject.getTab("Display").getOle("Output").getBoolean("Fill", true));
            generateModel(myProject, true);
        }

        if (e.getActionCommand().equals("SaveProject")) {
            if (projectFile == null) {
                saveAsProject();
            } else {
                saveProject();
            }
        }

        if (e.getActionCommand().equals("SaveAs")) {
            saveAsProject();
        }

        if (e.getActionCommand().equals("OpenProject")) {
            if (projectFile != null) {
                if (oMainFrame.Confirm("Save changes to project?")) {
                    if (projectFile != null) {
                        saveProject();
                    } else {
                        saveAsProject();
                    }
                }
            }
            if (openProject()) {
                osDiagram.setZoom(1);
                ooutput.setWidth(myProject.getTab("Display").getOle("Output").getInt("Width", 16));
                ooutput.setHeight(myProject.getTab("Display").getOle("Output").getInt("Height", 16));
                ooutput.setFill(myProject.getTab("Display").getOle("Output").getBoolean("Fill", true));
                generateModel(myProject, true);
                showProjectSummary();
            }
        }
        if (e.getActionCommand().equals("ConfigureProject")) {
            if (projectFile != null) {
                editProject();
                ooutput.setWidth(myProject.getTab("Display").getOle("Output").getInt("Width", 16));
                ooutput.setHeight(myProject.getTab("Display").getOle("Output").getInt("Height", 16));
                ooutput.setFill(myProject.getTab("Display").getOle("Output").getBoolean("Fill", true));
                generateModel(myProject, true);
                showProjectSummary();
            } else {
                oMainFrame.Error("No project found");
            }
        }
        if (e.getActionCommand().equals("ExportModel")) {
            if (projectFile != null) {
                if (allmethods == null) {
                    scanClasses(myProject);
                }
                String type = oMainFrame.inputSelect("Export To", new String[]{"pdf", "png", "svg"}, "pdf");
                if (type != null) {
                    String mydotFile = projectFile.replace("projects/", "dot/").replace("prj", "dot");
                    OleDot.exportTo(mydotFile, type);
                    oMainFrame.Info("export generated");
                }

            } else {
                oMainFrame.Error("No project found");
            }
        }

        if (e.getActionCommand().equals("GenerateModel")) {
            generateModel(myProject, true);
            showProjectSummary();
            oMainFrame.Info("Model generated");
        }
        if (e.getActionCommand().equals("SelectPackages")) {
            OleDialog odPackages = new OleDialog(oMainFrame, "Select packages");
            odPackages.addActionListener((e2, c2) -> editProjectListener(e2, c2));
            if (odPackages.run(myProject, "Packages")) {
                myProject = odPackages.getResult();
                ooutput.setWidth(myProject.getTab("Display").getOle("Output").getInt("Width", 16));
                ooutput.setHeight(myProject.getTab("Display").getOle("Output").getInt("Height", 16));
                ooutput.setFill(myProject.getTab("Display").getOle("Output").getBoolean("Fill", true));
                generateModel(myProject, true);
                showProjectSummary();
            }
        }

        if (e.getActionCommand().equals("SelectClasses")) {
            OleDialog odClasses = new OleDialog(oMainFrame, "Select classes");
            odClasses.addActionListener((e2, c2) -> editProjectListener(e2, c2));
            if (odClasses.run(myProject, "Classes")) {
                myProject = odClasses.getResult();
                ooutput.setWidth(myProject.getTab("Display").getOle("Output").getInt("Width", 16));
                ooutput.setHeight(myProject.getTab("Display").getOle("Output").getInt("Height", 16));
                ooutput.setFill(myProject.getTab("Display").getOle("Output").getBoolean("Fill", true));
                generateModel(myProject, true);
                showProjectSummary();
            }

        }
        if (e.getActionCommand().equals("Thicker")) {
            ooutput.setWidth(ooutput.getWidth() + 1);
            generateModel(myProject, true);
            showProjectSummary();
        }
        if (e.getActionCommand().equals("Narrower")) {
            ooutput.setWidth(ooutput.getWidth() - 1);
            generateModel(myProject, true);
            showProjectSummary();
        }
        if (e.getActionCommand().equals("Taller")) {
            ooutput.setHeight(ooutput.getHeight() + 1);
            generateModel(myProject, true);
            showProjectSummary();
        }
        if (e.getActionCommand().equals("Shorter")) {
            ooutput.setHeight(ooutput.getHeight() - 1);
            generateModel(myProject, true);
            showProjectSummary();
        }

        if (e.getActionCommand()
                .equals("About")) {
            oMainFrame.Info("<html><center><h1>ClassDiagram</h1><br><b>Programmed by</b><br><i>Anatoli Grishenko</i></html>");
        }
    }

    public static void frameKeyListener(KeyEvent e) {
//        oMainFrame.Info("Keyboard event " + e.getKeyChar());
    }

    public static void editProjectListener(ActionEvent e, OleConfig olecfg) {
        if (e.getActionCommand().equals("[Scan files]")) {
            scanFiles(olecfg);
        } else if (e.getActionCommand().equals("[Scan classes]")) {
            scanClasses(olecfg);
        } else if (e.getActionCommand().equals("[Show methods]")) {
            String classname = olecfg.getProperties().getOle("Classes found").getField("selected");
            if (classname != null && classname.length() > 0) {
                ArrayList<String> alFileList = new ArrayList();
                for (String s : allmethods.get(classname)) {
                    alFileList.add(s);
                }
                Collections.sort(alFileList);
                olecfg.getTab("Classes").setField("Methods found", new ArrayList(alFileList));
            }
        } else if (e.getActionCommand().equals("[Scan packages]")) {
            scanPackages(olecfg);
        } else if (e.getActionCommand().equals("[Select packages]")) {
            for (String fpackage : new ArrayList<String>(olecfg.getProperties().getOle("Packages found").getArray("selected"))) {
                if (!olecfg.getTab("Packages").getArray("Packages selected").contains(fpackage)) {
                    olecfg.getTab("Packages").addToField("Packages selected", fpackage);
                }
            }

        } else if (e.getActionCommand().equals("[Select classes]")) {
            for (String fclass : new ArrayList<String>(olecfg.getProperties().getOle("Classes found").getArray("selected"))) {
                if (!olecfg.getTab("Classes").getArray("Classes selected").contains(fclass)) {
                    olecfg.getTab("Classes").addToField("Classes selected", fclass);
                }
                if (!olecfg.getTab("Classes").getArray("Show methods").contains(fclass)) {
                    olecfg.getTab("Classes").addToField("Show methods", fclass);
                }
            }
        } else if (e.getActionCommand().equals("[Reset packages]")) {
            olecfg.getTab("Packages").setField("Packages found", new ArrayList(myProject.getTab("Packages").getArray("Packages found")));
        } else if (e.getActionCommand().equals("[Reset classes]")) {
            olecfg.getTab("Classes").setField("Classes found", new ArrayList(myProject.getTab("Classes").getArray("Classes found")));
            olecfg.getTab("Classes").setField("Show methods", new ArrayList(myProject.getTab("Classes").getArray("Show methods")));
        } else {
            oMainFrame.Error(e.getActionCommand() + " Undefined answer");
        }
    }

    /////////////  COMMANDS
    public static void scanFiles(OleConfig olecfg) {
        findUsage(new ArrayList<String>(), olecfg);
        oMainFrame.Info("Found " + olecfg.getTab("Sources").getArray("File list").size() + " files");
    }

    public static void scanPackages(OleConfig olecfg) {
        findAllPackages(olecfg.getTab("Sources").getArray("File list"), olecfg);
        oMainFrame.Info("Found " + olecfg.getTab("Packages").getArray("Packages found").size() + " packages");
    }

    public static void scanClasses(OleConfig olecfg) {
        findAllClasses(olecfg.getTab("Packages").getArray("Packages selected"), olecfg);
        oMainFrame.Info("Found " + olecfg.getTab("Classes").getArray("Classes found").size() + " classes");
    }

    public static void editProject() {
        OleDialog odiag = new OleDialog(oMainFrame, "Project configuration " + projectFile);
        odiag.addActionListener((e, c) -> editProjectListener(e, c));
        if (odiag.run(myProject)) {
            myProject = odiag.getResult();
            oMainFrame.showInfo(" Project " + projectFile + " summary: "
                    + myProject.getTab("Sources").getArray("File list").size() + " files "
                    + +myProject.getTab("Classes").getArray("Classes found").size() + " classes "
            );
            myProject = new OleConfig(myProject);

        }
    }

    public static boolean openProject() {
        String aux = OleDialog.doSelectFile("./projects", "prj");
        if (aux == null) {
            oMainFrame.showStatus(" ");
            return false;
        }
        projectFile = aux;
        oMainFrame.showInfo("Opening project " + projectFile + " ...");
        myProject = new OleConfig();
        myProject.loadFile(projectFile);
        if (myProject.isEmpty()) {
            oMainFrame.showError("Error loading " + projectFile + " ...");
            projectFile = null;
            return false;
        }
        oMainFrame.setTitle(projectFile);
        findAll(myProject);
        myProject = new OleConfig(myProject);
        return true;
    }

    public static void saveProject() {
        myProject.saveAsFile("./", projectFile, true);
        oMainFrame.showInfo("Saving project " + projectFile + " ...");
    }

    public static void saveAsProject() {
        String saveasFile = OleDialog.doSaveAsFile("./");
        if (saveasFile != null) {
            projectFile = saveasFile;
            saveProject();
        }
    }

    public static void generateModel(OleConfig oleconf, boolean simplified) {
        modelFile = projectFile.replace("prj", "mod").replace("projects", "models");
        dumpJson(oleconf, simplified);
        osDiagram.repaint();
    }

    ////////////////// seek disk items
    public static void clearFiles() {
        allfilenames = new ArrayList();
        allfilecontent = new HashMap();
        allfilebasher = new HashMap();
        allclasses = new ArrayList();
        clearModel();
    }

    public static void clearModel() {
        allpackages = new ArrayList();
        allfullpackages = new HashMap();
        allextends = new HashMap();
        allowns = new HashMap();
        allmethods = new HashMap();
        classusage = new HashMap();
        mapDiagram = null;
        ooutput.clear();
    }

    public static void findFolder(String padding, String folder) throws IOException {
        File folderinputs[], dir, item;
        OleFile ofile;
        dir = new File(folder);
        folderinputs = dir.listFiles();
        ofile = new OleFile();
        oMainFrame.showProgress(padding + "Found folder " + folder);
        for (int i = 0; i < folderinputs.length; i++) {
            item = folderinputs[i];
            if (item.isDirectory() && !item.getName().startsWith(".")) {
                String fullpath = folder + "/" + item.getName();
                if (fullpath.contains(myProject.getTab("Sources").getField("Source folders"))) {
                    findFolder(padding + "   ", folder + "/" + item.getName());
                }
            } else if (item.isFile()) {
                if (item.getName().endsWith(myProject.getTab("Sources").getField("File extension"))) {

                    allfilenames.add(item.getName());
                    ofile.loadFile(folder + "/" + item.getName());
                    allfilecontent.put(item.getName(), ofile.getStringContent());
                    allfilebasher.put(item.getName().replace(".java", ""), new Basher(folder + "/" + item.getName()));
                    oMainFrame.showProgress(padding + "Found file " + item.getName());
                }
            }
        }
    }

    public static void findAllFiles(ArrayList<String> inputfolders, OleConfig olecfg) {
//        ArrayList<String> folders = new ArrayList(myProject.getTab("Sources").getArray("Input folders"));

        clearFiles();
        if (inputfolders.isEmpty()) {
            inputfolders = new ArrayList(olecfg.getTab("Sources").getArray("Input folders"));
        }
        oMainFrame.showProgress("Seeking info on disk", 0, 50);
        oMainFrame.showProgress("Seeking folders");
        for (String folder : inputfolders) {
            try {
                findFolder("   ", folder);
            } catch (IOException ex) {
                oMainFrame.showError("Unable to access folder " + folder);
            }
        }
        oMainFrame.showProgress("Found " + allfilenames.size() + " files\n");
    }

    public static void findUsage(ArrayList<String> files, OleConfig olecfg) {
        ArrayList<String> datamembers;
        String sclassname, ssuperclass;

        if (files.isEmpty()) {
            findAllFiles(files, olecfg);
            files = new ArrayList(allfilebasher.keySet());
            Collections.sort(files);
        }
        // Reset usage counter
        for (String fromclass : files) {
            classusage.put(fromclass, 1);
        }
        oMainFrame.showProgress("Analyzing java dependencies");
        oMainFrame.showProgress("Analyzing classes and superclasses");
        // Count extends
        for (String sclass : files) {
            sclassname = getClassName(sclass);
            ssuperclass = getExtends(sclass);
            if (ssuperclass.length() > 0) {
                if (classusage.get(ssuperclass) == null) {
                    classusage.put(ssuperclass, 1);
                }
                oMainFrame.showProgress("   " + sclassname + " extends " + ssuperclass);
                classusage.put(sclassname, classusage.get(sclassname) + 1);
                classusage.put(ssuperclass, classusage.get(ssuperclass) + 1);
            }
        }
        // Count owns
        Collections.sort(files.subList(0, files.size()));
        oMainFrame.showProgress("Analyzing data members");
        for (String fromclass : files) {
            datamembers = getDataMembers(fromclass); //frombasher.grepv("//");
            allowns.put(fromclass, datamembers);
//            oMainFrame.showProgress("   " + fromclass);
            for (String tonew : datamembers) {
                classusage.put(tonew, classusage.get(tonew) + 1);
                classusage.put(fromclass, classusage.get(fromclass) + 1);
                oMainFrame.showProgress("       " + fromclass + "." + tonew);
            }
        }
        // Methods
        oMainFrame.showProgress("Analyzing methods");
        for (String fromclass : files) {
            datamembers = getMethods(fromclass); //frombasher.grepv("//");
            allmethods.put(fromclass, datamembers);
            if (datamembers.size() > 0) {
                oMainFrame.showProgress("   " + fromclass + "." + datamembers.toString());
            }
        }
        // Remove unused
        if (myProject.getTab("Sources").getField("Which classes").equals("Referenced")) {
            oMainFrame.showProgress("Removing unused classes");
            for (String sclass : files) {
                if (classusage.get(sclass) == null || classusage.get(sclass) < 1) {
                    allfilebasher.remove(sclass);
                    oMainFrame.showProgress("   Removig unused class " + sclass);
                }
            }
        }
        oMainFrame.showProgress("End of analysis");
        ArrayList<String> lAux;

        lAux = new ArrayList(allfilebasher.keySet());
        Collections.sort(lAux);
        olecfg.getTab("Sources").setField("File list", new ArrayList(lAux));
    }

    public static void findAllPackages(ArrayList<String> files, OleConfig olecfg) {
        String sclasscontent, spackage, ssuperclass;
        if (files.isEmpty()) {
            findUsage(files, olecfg);
        }
        oMainFrame.showProgress("Selecting packages");
        allfullpackages.put("extern", new ArrayList<String>());
        for (String sclass : new ArrayList<String>(olecfg.getTab("Sources").getArray("File list"))) {
            sclasscontent = getClassName(sclass);
            spackage = getPackageName(sclass);
            if (spackage.length() < 1) {
                continue;
            }
            if (!allpackages.contains(spackage)) {
                allpackages.add(spackage);
                oMainFrame.showProgress("   " + spackage);
            }
            if (!allfullpackages.keySet().contains(spackage)) {
                allfullpackages.put(spackage, new ArrayList<String>());
            }
            allfullpackages.get(spackage).add(sclasscontent);
        }
        ArrayList<String> lAux = new ArrayList(allpackages);
        Collections.sort(lAux);
        olecfg.getTab("Packages").setField("Packages found", new ArrayList(lAux));
    }

    public static void findAllClasses(ArrayList<String> packages, OleConfig olecfg) {
        String sclasscontent, spackage, ssuperclass;
        if (packages.isEmpty()) {
            findAllPackages(packages, olecfg);
        }
        ArrayList<String> filelist = olecfg.getTab("Sources").getArray("File list");
        for (String sclass : new ArrayList<String>(filelist)) {
            sclasscontent = getClassName(sclass);
            spackage = getPackageName(sclass);
            if (!allclasses.contains(sclasscontent)) {
                allclasses.add(sclasscontent);

            }
            ssuperclass = getExtends(sclass);

            if (ssuperclass.length() > 0) {
                if (!allclasses.contains(ssuperclass)) {
                    allclasses.add(ssuperclass);
                }
                if (!allextends.keySet().contains(ssuperclass)) {
                    allextends.put(ssuperclass, new ArrayList<String>());
                }
                allextends.get(ssuperclass).add(sclasscontent);
                if (!filelist.contains(ssuperclass)) {
                    allfullpackages.get("extern").add(ssuperclass);
                }
            }
        }
        ArrayList<String> lAux = new ArrayList(allclasses);
        Collections.sort(lAux);
        olecfg.getTab("Classes").setField("Classes found", new ArrayList(lAux));
    }

    public static void findAll(OleConfig olecfg) {
        findAllClasses(new ArrayList<String>(), olecfg);
    }

    public static void dumpJson(OleConfig olecfg, boolean simplified) {
        HashMap<String, String> boxcolors = new HashMap();
        ooutput.clear();
        Ole oclass, oformat, singleformat, orelation, omethods;
        // Sets resolution
        try {
            ooutput.setResolution(Integer.parseInt(olecfg.getTab("Display").getOle("Output").getString("Resolution", "600")));
        } catch (Exception Ex) {
            ooutput.setResolution(150);
        }
        // Add extern packages
        ArrayList<String> classtypes = olecfg.getTab("Packages").getArray("Packages selected");
        classtypes.add("extern");
        ooutput.setField("classtypes", new ArrayList(classtypes));
        ArrayList<String> alaux = new ArrayList();
        alaux.add("extends");
        alaux.add("owns");
        ooutput.setField("relationtypes", new ArrayList(alaux));
        oclass = new Ole();
        oformat = new Ole();
        int ncolor = 0;
        if (simplified) {
            oMainFrame.showProgress("Generating dot model", 1, 1000);
        } else {
            oMainFrame.showProgressFrame("Generating dot model", 1, 1000);
        }
        oMainFrame.showProgress("Exploring packages...");
        ArrayList<String> prefPackages = new ArrayList<String>(olecfg.getTab("Packages").getArray("Packages selected")),
                prefClasses = new ArrayList<String>(olecfg.getTab("Classes").getArray("Classes selected")),
                methClasses = new ArrayList<String>(olecfg.getTab("Classes").getArray("Show methods"));

        // add format for every package
        oclass.setField("extern", new ArrayList(selectPreferred(allfullpackages.get("extern"), prefClasses))); //////
        for (String spackage : prefPackages) {
            oMainFrame.showProgress("     Package " + spackage);
            oclass.setField(spackage, new ArrayList(selectPreferred(allfullpackages.get(spackage), prefClasses)));
            singleformat = new Ole();
            singleformat.setField("face", olecfg.getTab("Display").getOle("Format").getString("Font"));
            singleformat.setField("fontsize", olecfg.getTab("Display").getOle("Format").getInt("Font size"));
            if (olecfg.getTab("Display").getOle("Format").getString("Fill color", "Black & White").equals("Black & White")) {
                singleformat.setField("fillcolor", "white"); //allcolours[ncolor++]);
            } else {
                singleformat.setField("fillcolor", allcolours[ncolor++]);
            }
            singleformat.setField("color", "black");
            oformat.setField(spackage, singleformat);
        }
        singleformat = new Ole();
        singleformat.setField("face", olecfg.getTab("Display").getOle("Format").getString("Font"));
        singleformat.setField("fontsize", olecfg.getTab("Display").getOle("Format").getInt("Font size"));
        singleformat.setField("fillcolor", "gray");
        singleformat.setField("color", "black");
        oformat.setField("extern", singleformat);

        // Add external classes
        orelation = new Ole();
        orelation.setField("extends", new ArrayList());
        oMainFrame.showProgress("Exploring subclasses...");
        if (allextends.size() > 0) {
            ArrayList<String> prefParent = selectPreferred(new ArrayList<String>(allextends.keySet()), prefClasses);
            for (String ssuperclass : prefParent) {
                oMainFrame.showProgress("     Class " + ssuperclass + " " + allextends.get(ssuperclass));
                Ole oaux = new Ole().setField(ssuperclass, new ArrayList(selectPreferred(allextends.get(ssuperclass), prefClasses)));
                orelation.addToField("extends", oaux);
            }
        }
        orelation.setField("owns", new ArrayList());
        if (allowns.size() > 0) {
            oMainFrame.showProgress("Exploring data members...");
            for (String ssuperclass : selectPreferred(new ArrayList<String>(allowns.keySet()), prefClasses)) {
//                oMainFrame.showProgress("     Class " + ssuperclass + " " + allowns.get(ssuperclass));
                Ole oaux = new Ole().setField(ssuperclass, new ArrayList(selectPreferred(allowns.get(ssuperclass), prefClasses)));
                orelation.addToField("owns", oaux);
            }
        }
        ooutput.setField("relation", orelation);
/// Methods
        if (allmethods.size() > 0 && olecfg.getTab("Classes").getBoolean("Include methods", false)) {
            orelation = new Ole();
            oMainFrame.showProgress("Exploring methods...");
            for (String ssuperclass : allmethods.keySet()) {
                oMainFrame.showProgress("     Class " + ssuperclass + " " + allmethods.get(ssuperclass));
                if (methClasses.contains(ssuperclass)) {
                    orelation.setField(ssuperclass, new ArrayList(allmethods.get(ssuperclass)));
                }
            }
            ooutput.setField("methods", orelation);
        }

        ooutput.setField("class", oclass);
        ooutput.setField("format", oformat);
        int penwidth = olecfg.getTab("Display").getOle("Lines").getInt("Line width", 1);
//        String colorline;
//        if (olecfg.getTab("Display").getOle("Lines").getString("Line color", "Black & White").equals("Black & White")) {
//            colorline= "black"; //allcolours[ncolor++]);
//        } else {
//            colorline = singleformat.getField("fillcolor");
//        }
        ooutput.getOle("format").setField("extends", "[arrowhead=onormal, penwidth=" + penwidth + ", color=black]");
        ooutput.getOle("format").setField("owns", "[style=dotted,arrowhead=odiamond, penwidth=" + penwidth + ",color=blue]");
        oMainFrame.showProgress("Saving model file..." + modelFile);
        ooutput.saveAsFile(".", modelFile, true);
        dotFile = modelFile.replace("models", "dot").replace("mod", "dot");
        oMainFrame.showProgress("Saving dot file..." + dotFile);
        ooutput.toDot(dotFile);
        ooutput.exportTo(dotFile, "png");

        oMainFrame.showProgress("Calling dot..." + dotFile);
        pngFile = modelFile.replace("models/", "export/").replace("mod", "png");

//        String tmpFile = modelFile.replace("models", "png").replace("mod", "tmp");
//        File f = new File(pngFile);
//        if (f.exists()) {
//            f.delete();
//        }
//        String command;
//        ProcessBuilder pb;
//        Process ps = null;
//        try {
//            command = "/usr/bin/dot -Tpng " + FileSystems.getDefault().getPath(dotFile).normalize().toAbsolutePath().toString()
//                    + "  -o " + FileSystems.getDefault().getPath(pngFile).normalize().toAbsolutePath().toString();
//            pb = new ProcessBuilder().command(command.split(" "));
//            pb.directory(FileSystems.getDefault().getPath("./").normalize().toAbsolutePath().toFile());
//            ps = pb.start();
//            ps.waitFor(5000, TimeUnit.MILLISECONDS);
//
//        } catch (Exception ex) {
//            System.err.println("Error generating output to " + pngFile + "\n" + ex.toString());
//        }
//
        if (new File(pngFile).exists()) {
            mapDiagram = new Map2DColor();
            try {
                if (!mapDiagram.loadMapRaw(pngFile).hasMap()) {
                    mapDiagram = null;
                    oMainFrame.Error("Error loading model " + pngFile);
                }
            } catch (IOException ex) {
                mapDiagram = null;
                oMainFrame.Error("Unexpected exception loading model " + pngFile + " " + ex.toString());
            }
        }

        oMainFrame.showProgress("Done!", 1000);
        if (!simplified) {
            oMainFrame.Info("Model generated");
        }
        opDiagram.setPreferredSize(new Dimension(mapDiagram.getWidth(), mapDiagram.getHeight()));
        osDiagram.reset(opDiagram.getPreferredSize());
//        opDiagram.repaint();
//        osDiagram.repaint();
    }

    public static String getClassName(String filename) {
        return filename;
    }

    public static String getPackageName(String filename) {
        return allfilebasher.get(filename).grepv("//").grep("package ").sed("package *", "").sed(";", "").toString();
    }

    public static String getExtends(String filename) {
        Basher aux = allfilebasher.get(filename).grepv("//").grep("class ").grep(" extends ");
        if (aux.toString().length() > 0) {
            return aux.grep("class").toString().replaceAll("public.*extends ", "").replaceAll(" .*\\{.*", "").replaceAll("\\{.*", "").trim();
//            return aux.sed("public class " + filename.replace("." + myConfig.getField("files"), "") + " extends ", "").toString().replaceAll(" *\\{.*", "");
        } else {
            return "";
        }
    }

    public static ArrayList<String> getDataMembers(String filename) {
        ArrayList<String> res = new ArrayList();
        boolean bclass = false, bfirstmethod = false;
        Pattern pat;

        for (String line : allfilebasher.get(filename).getList()) {
            if (bclass && !bfirstmethod) {
                for (String toclass : allfilebasher.keySet()) {
                    if (classusage.get(toclass) > 0 && !toclass.equals(filename)) {
                        pat = Pattern.compile("[ \\[(<]" + toclass + "[\\])> ]");
                        Matcher m = pat.matcher(line);
                        if (m.find() && !res.contains(toclass)) {
                            res.add(toclass);
//                            System.out.println("Found a new from " + filename + " to " + toclass);
                        }
                    }
                }

            }

            if (line.matches("public class.*")) {
                bclass = true;
            }
            if ((line.contains("public") || line.contains("private") || line.contains("protected")) && line.contains("(") && line.contains(")") && !line.contains("new")) {
                bfirstmethod = true;
                return res;
            }
        }
        return res;
    }

    public static ArrayList<String> getMethods(String filename) {
        ArrayList<String> res = new ArrayList();
        boolean bclass = false, bfirstmethod = false;
        Pattern pat;
        String smethod;

        for (String line : allfilebasher.get(filename).getList()) {
            if (bfirstmethod) {
                if ((line.contains("public") || line.contains("protected"))
                        && line.contains("(") && line.contains(")") && !line.contains("new") && !line.startsWith("//")) {
                    smethod = line;
                    smethod = smethod.replace("{", "");
                    smethod = smethod.replace("public ", "");
                    smethod = smethod.replace("protected ", "");
                    smethod = smethod.trim();
                    res.add(smethod);

//                    System.out.println("Found method " + smethod);
                }
            }
            if (line.matches("public class.*")) {
                bclass = true;
            }
            if ((line.contains("public") || line.contains("private") || line.contains("protected")) && line.contains("(") && line.contains(")") && !line.contains("new") && !line.startsWith("//")) {
                bfirstmethod = true;
            }
        }
        return res;
    }

    public static void paintDiagram(Graphics2D myg) {
        System.out.println("OleDrawPane Repaint " + rpaint++);
        if (mapDiagram != null) {
            opDiagram.clear();
            myg.setRenderingHint(KEY_ANTIALIASING, VALUE_ANTIALIAS_ON);
            showProjectSummary();
            int nw = (int) (opDiagram.getPreferredSize().getWidth()),
                    nh = (int) (opDiagram.getPreferredSize().getHeight());
            myg.drawImage(mapDiagram.getMap(), 0, 0, nw, nh, null);
        }
    }

    public static void showProjectSummary() {
        oMainFrame.showStatus(" Project " + projectFile + " "
                + "     " + emojis.FOLDER + " " + myProject.getTab("Sources").getArray("File list").size() + " files"
                + "     " + emojis.PACKAGE + " " + +myProject.getTab("Packages").getArray("Packages found").size() + " packages"
                + "     " + emojis.CLASS + " " + +myProject.getTab("Classes").getArray("Classes found").size() + " classes"
                + "           " + emojis.MAGNIFIER + " " + String.format("%3.1f", osDiagram.getZoom())
                + "     " + String.format("%03dx%03d", ooutput.getWidth(), ooutput.getHeight())
        );

    }

    public static ArrayList<String> selectPreferred(ArrayList<String> Original, ArrayList<String> Preferred) {
        ArrayList<String> res = new ArrayList();
        for (String s : Original) {
            if (Preferred.contains(s)) {
                res.add(s);
            }
        }
        return res;
    }
}
