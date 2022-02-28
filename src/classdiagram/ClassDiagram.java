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
import swing.OleProgressFrame;
import swing.SwingTools;
import tools.emojis;

/**
 *
 * @author Anatoli Grishenko <Anatoli.Grishenko@gmail.com>
 */
public class ClassDiagram {

    static OleConfig myConfig, myProject;
    static OleApplication oMainFrame;
    static JPanel pSideTools, pStatus, pMain;
    static OleDrawPane opDiagram;
    static JScrollPane osDiagram;
    static String projectFile, modelFile, dotFile, pngFile, pdfFile;

    static ArrayList<String> allfilenames, allpackages, allclasses;
    static HashMap<String, String> allfilecontent;
    static HashMap<String, Integer> classusage;
    static HashMap<String, ArrayList<String>> allfullpackages, allextends, allowns, allmethods;
    static HashMap<String, Basher> allfilebasher;
    static String allcolours[] = new String[]{"Chartreuse", "MediumSpringGreen", "Turquoise", "CadetBlue", "MediumAquaMarine", "Thistle", "LightSteelBlue", "DarkViolet", "BlueViolet", "DarkOliveGreen", "Aqua", "OliveDrab", "Cyan", "LightBlue", "Indigo", "DarkSeaGreen", "Crimson", "Orchid", "DarkGreen", "Salmon", "RebeccaPurple", "MediumSlateBlue", "DodgerBlue", "PaleTurquoise", "Fuchsia", "Violet", "DarkTurquoise", "Blue", "SpringGreen", "DarkSlateBlue", "SkyBlue", "MediumBlue", "MidnightBlue", "IndianRed", "ForestGreen", "Lavender", "SlateBlue", "DarkMagenta", "Aquamarine", "DarkOrchid", "Lime", "Teal", "LightSeaGreen", "PowderBlue", "RoyalBlue", "Green", "Plum", "LimeGreen", "MediumOrchid", "FireBrick", "DarkRed", "MediumSeaGreen", "LightSkyBlue", "LightSalmon", "MediumTurquoise", "LightCoral", "DarkSalmon", "GreenYellow", "DeepSkyBlue", "MediumPurple", "LawnGreen", "CornflowerBlue", "PaleGreen", "SteelBlue", "Magenta", "LightCyan", "Navy", "Purple", "Red", "YellowGreen", "DarkCyan", "LightGreen", "SeaGreen", "DarkBlue"};
    static Map2DColor mapDiagram;

    static int rpaint = 0;

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        myConfig = new OleConfig();
        myConfig.loadFile("config/classdiagram.app");
        if (myConfig.isEmpty()) {
            SwingTools.Warning("Configuration file not found");
        }
        initGUI(myConfig);
    }

    public static void initGUI(OleConfig oleconf) {
        SwingTools.initFlatLaf();
        oMainFrame = new OleApplication(oleconf) {
            @Override
            public void myActionListener(ActionEvent e) {
                frameActionListener(e);
            }

            @Override
            public void myKeyListener(KeyEvent e) {
                frameKeyListener(e);
            }

            @Override
            public void itemStateChanged(ItemEvent e) {
                frameMenuListener(e);
            }
        };
        oMainFrame.init();
        oMainFrame.getMainPanel().removeAll();
        oMainFrame.getMainPanel().setLayout(new BorderLayout());

        opDiagram = new OleDrawPane() {
            @Override
            public void OleDraw(Graphics2D g) {
                paintDiagram(g);
            }
        };
//        opDiagram.setBorder(new EmptyBorder(0, 0, 0, 0));
//        opDiagram.setSize(oMainFrame.getMainPanel().getPreferredSize());
//        opDiagram.setBackground(Color.LIGHT_GRAY);
//        opDiagram.setForeground(Color.WHITE);
//        opDiagram.clear();

//        osDiagram = new JScrollPane(opDiagram);
//        osDiagram.setHorizontalScrollBarPolicy(JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);
//        osDiagram.setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED);
//        JPanel opDiagram= new JPanel();
        opDiagram.setBorder(new EmptyBorder(0, 0, 0, 0));
        opDiagram.setPreferredSize(oMainFrame.getMainPanel().getPreferredSize());
        opDiagram.setBackground(Color.LIGHT_GRAY);
        opDiagram.setForeground(Color.WHITE);

        osDiagram = new JScrollPane(opDiagram);

        osDiagram.setBorder(new EmptyBorder(0, 0, 0, 0));
//        osDiagram.setSize(oMainFrame.getMainPanel().getPreferredSize());
//        osDiagram.setBackground(Color.WHITE);
//        osDiagram.setForeground(Color.BLACK);
        osDiagram.setHorizontalScrollBarPolicy(JScrollPane.HORIZONTAL_SCROLLBAR_ALWAYS);
        osDiagram.setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_ALWAYS);
//        osDiagram.setViewportView(opDiagram);
//        osDiagram.clear();
//        osDiagram.getOleDrawPane().setBorder(new EmptyBorder(0, 0, 0, 0));
//        osDiagram.getOleDrawPane().setSize(oMainFrame.getMainPanel().getPreferredSize());
//        osDiagram.getOleDrawPane().setBackground(Color.LIGHT_GRAY);
//        osDiagram.getOleDrawPane().setForeground(Color.WHITE);
//        osDiagram.getOleDrawPane().clear();

        oMainFrame.getMainPanel().add(osDiagram, BorderLayout.CENTER);
        oMainFrame.getMainPanel().validate();
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
                olecfg.getTab("Class diagram").setField("Methods found", new ArrayList(alFileList));
            }
        } else {
            oMainFrame.Error(e.getActionCommand() + " Undefined answer");
        }
    }

    public static void cleanScan() {
        allfilenames = new ArrayList();
        allfilecontent = new HashMap();
        allfilebasher = new HashMap();
        allclasses = new ArrayList();
        cleanModel();
    }

    public static void cleanModel() {
        allpackages = new ArrayList();
        allfullpackages = new HashMap();
        allextends = new HashMap();
        allowns = new HashMap();
        allmethods = new HashMap();
        classusage = new HashMap();
        mapDiagram = null;
    }

    public static void scanFiles(OleConfig olecfg) {
        findAllFiles(olecfg);
        oMainFrame.showProgress("Scanning files", 1, allfilebasher.size());
        ArrayList<String> alFileList = new ArrayList();
        for (String s : allfilebasher.keySet()) {
            alFileList.add(s);
            oMainFrame.showProgress(s);
        }
        Collections.sort(alFileList);
        olecfg.getTab("Sources").setField("File list", new ArrayList(alFileList));
    }

    public static void scanClasses(OleConfig olecfg) {
        if (allfilebasher == null || allfilebasher.size() == 0) {
            scanFiles(olecfg);
        }
        findAllComponents(olecfg);
        findAllClasses(olecfg);
        ArrayList<String> alFileList = new ArrayList();
        for (String s : allclasses) {
            alFileList.add(s);
        }
        Collections.sort(alFileList);
        olecfg.getTab("Class diagram").setField("Classes found", new ArrayList(alFileList));
        olecfg.getOle("properties").getOle("Select class").setField("select", new ArrayList(alFileList));

    }

    public static void editProject() {
        OleDialog odiag = new OleDialog(oMainFrame, "Project configuration " + projectFile);
        odiag.addActionListener((e, c) -> editProjectListener(e, c));
        if (odiag.run(myProject)) {
            myProject = odiag.getResult();
            oMainFrame.showInfo(" Project " + projectFile + " summary: "
                    + myProject.getTab("Sources").getArray("File list").size() + " files "
                    + +myProject.getTab("Class diagram").getArray("Classes found").size() + " classes "
            );
        }
    }

    public static boolean openProject() {
        projectFile = OleDialog.doSelectFile("./projects", "prj");
        if (projectFile == null) {
            oMainFrame.showStatus(" ");
            return false;
        }
        oMainFrame.showInfo("Opening project " + projectFile + " ...");
        myProject = new OleConfig();
        myProject.loadFile(projectFile);
        if (myProject.isEmpty()) {
            oMainFrame.showError("Error loading " + projectFile + " ...");
            projectFile = null;
            return false;
        }
        oMainFrame.setTitle(projectFile);
        cleanScan();
        scanClasses(myProject);
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

    public static void frameActionListener(ActionEvent e) {
        /// TBM
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
            projectFile = null;
            myProject = new OleConfig();
            myProject.loadFile("config/empty.prj");
            oMainFrame.setTitle(projectFile);
            oMainFrame.showInfo("New empy project ");
            editProject();
        }

        if (e.getActionCommand().equals("SaveProject")) {
            if (projectFile != null) {
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
                editProject();
                generateModel(true);
            }
        }
        if (e.getActionCommand().equals("ConfigureProject")) {
            if (projectFile != null) {
                editProject();
            } else {
                oMainFrame.Error("No project found");
            }
        }
        if (e.getActionCommand().equals("GenerateModel")) {
            if (projectFile != null) {
                if (allmethods == null) {
                    scanClasses(myProject);
                }
                generateModel(false);
            } else {
                oMainFrame.Error("No project found");
            }
        }

        if (e.getActionCommand()
                .equals("About")) {
            oMainFrame.Info("<html><center><h1>ClassDiagram</h1><br><b>Programmed by</b><br><i>Anatoli Grishenko</i></html>");
        }
    }

    public static void generateModel(boolean simplified) {
        modelFile = projectFile.replace("prj", "mod").replace("projects", "models");
        dumpJson(myProject, simplified);
//        opDiagram.repaint();
        osDiagram.repaint();
//        oMainFrame.pack();
//        oMainFrame.validate();
    }

    public static void frameKeyListener(KeyEvent e) {
//        oMainFrame.Info("Keyboard event " + e.getKeyChar());
        // TBW
    }

    public static void frameMenuListener(ItemEvent e) {
//        oMainFrame.Info("Item event " + e.getItem());
    }

    public static void findAllComponents(OleConfig ocfg) {
        ArrayList<String> datamembers;
        ArrayList<String> sorted;
        String sclassname, spackage, ssuperclass;

        // Reset usage counter
        for (String fromclass : allfilebasher.keySet()) {
            classusage.put(fromclass, 0);
        }
        oMainFrame.showProgress("Analyzing java", 1, 4);
//        oMainFrame.showProgressFrame("Analyzing java", 0, 4);
        oMainFrame.showProgress("Scanning classes");
//        oMainFrame.showInfo("Analyzing extends ...");
        // Count extends
        for (String sclass : allfilebasher.keySet()) {
            sclassname = getClassName(sclass);
            ssuperclass = getExtends(sclass);
            if (ssuperclass.length() > 0 && classusage.get(ssuperclass) != null) {
                classusage.put(sclassname, classusage.get(sclassname) + 1);
                classusage.put(ssuperclass, classusage.get(ssuperclass) + 1);
            }
        }
//        oMainFrame.showInfo("Analyzing data members ...");
        // Count owns
        sorted = new ArrayList(allfilebasher.keySet());
        Collections.sort(sorted.subList(0, sorted.size()));
        oMainFrame.showProgress("Scanning data members");
        for (String fromclass : sorted) {
            datamembers = getDataMembers(fromclass); //frombasher.grepv("//");
//            System.out.println("Exploring class " + fromclass + " Found data members > " + datamembers);
            allowns.put(fromclass, datamembers);
            for (String tonew : datamembers) {
                classusage.put(tonew, classusage.get(tonew) + 1);
                classusage.put(fromclass, classusage.get(fromclass) + 1);
            }
        }
        // Methods
//        oMainFrame.showInfo("Analyzing methods ...");
        oMainFrame.showProgress("Scanning methods");
        for (String fromclass : sorted) {
            datamembers = getMethods(fromclass); //frombasher.grepv("//");
//            System.out.println("Exploring class " + fromclass + " Found Methods > " + datamembers);
            allmethods.put(fromclass, datamembers);
        }
        // Remove unused
        if (ocfg.getTab("Class diagram").getField("Which classes").equals("Referenced")) {
//            oMainFrame.showInfo("Removing unused classes ...");
            for (String sclass : sorted) {
//                System.out.println("Class usage " + sclass + " : " + classusage.get(sclass));
                if (classusage.get(sclass) == null || classusage.get(sclass) < 1) {
                    allfilebasher.remove(sclass);
                }
            }
        }
        oMainFrame.showProgress("Done!");

    }

    public static void findAllClasses(OleConfig ocfg) {
        String sclasscontent, spackage, ssuperclass;
        for (String sclass : allfilebasher.keySet()) {
            sclasscontent = getClassName(sclass);
            spackage = getPackageName(sclass);
            if (!allpackages.contains(spackage)) {
                allpackages.add(spackage);
            }
            if (spackage.length() < 1) {
                continue;
            }
            allclasses.add(sclasscontent);
//            oMainFrame.showInfo("Found class " + sclass + " in package " + spackage);
            ssuperclass = getExtends(sclass);
            if (ssuperclass.length() > 0) {
                if (!allextends.keySet().contains(ssuperclass)) {
                    allextends.put(ssuperclass, new ArrayList<String>());
                }
                allextends.get(ssuperclass).add(sclasscontent);
            }
            if (!allfullpackages.keySet().contains(spackage)) {
                allfullpackages.put(spackage, new ArrayList<String>());
            }
            allfullpackages.get(spackage).add(sclasscontent);
        }
    }

    public static void dumpJson(OleConfig olecfg, boolean simplified) {
        OleDot ooutput = new OleDot();
        Ole oclass, oformat, singleformat, orelation, omethods;
        // Remove unused classes
        ooutput.setField("classtypes", new ArrayList(allfullpackages.keySet()));
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
        for (String spackage : allfullpackages.keySet()) {
            oMainFrame.showProgress("     Package " + spackage);
            oclass.setField(spackage, new ArrayList(allfullpackages.get(spackage)));
            singleformat = new Ole();
            singleformat.setField("face", olecfg.getTab("Class diagram").getOle("Format").getString("Font"));
            singleformat.setField("fontsize", olecfg.getTab("Class diagram").getOle("Format").getInt("Font size"));
            oMainFrame.showProgress("     " + allfullpackages.get(spackage));
            if (olecfg.getTab("Class diagram").getOle("Format").getString("Fill color", "Black & White").equals("Black & White")) {
                singleformat.setField("fillcolor", "white"); //allcolours[ncolor++]);
            } else {
                singleformat.setField("fillcolor", allcolours[ncolor++]);
            }
            singleformat.setField("color", "black");
            oformat.setField(spackage, singleformat);
        }
        orelation = new Ole();
        orelation.setField("extends", new ArrayList());
        oMainFrame.showProgress("Exploring subclasses...");
        if (allextends.size() > 0) {
            for (String ssuperclass : allextends.keySet()) {
                oMainFrame.showProgress("     Class " + ssuperclass + " " + allextends.get(ssuperclass));
                Ole oaux = new Ole().setField(ssuperclass, new ArrayList(allextends.get(ssuperclass)));
                orelation.addToField("extends", oaux);
            }
        }
        orelation.setField("owns", new ArrayList());
        if (allowns.size() > 0) {
            oMainFrame.showProgress("Exploring data members...");
            for (String ssuperclass : allowns.keySet()) {
                oMainFrame.showProgress("     Class " + ssuperclass + " " + allowns.get(ssuperclass));
//                oMainFrame.showInfo("Exploring class " + ssuperclass);
                Ole oaux = new Ole().setField(ssuperclass, new ArrayList(allowns.get(ssuperclass)));
                orelation.addToField("owns", oaux);
            }
        }
        ooutput.setField("relation", orelation);
/// Methods
        if (allmethods.size() > 0) {
            orelation = new Ole();
            oMainFrame.showProgress("Exploring methods...");
            for (String ssuperclass : allmethods.keySet()) {
                oMainFrame.showProgress("     Class " + ssuperclass + " " + allmethods.get(ssuperclass));
                orelation.setField(ssuperclass, new ArrayList(allmethods.get(ssuperclass)));
            }
            ooutput.setField("methods", orelation);
        }

        ooutput.setField("class", oclass);
        ooutput.setField("format", oformat);
        ooutput.getOle("format").setField("extends", "[arrowhead=onormal,color=black]");
        ooutput.getOle("format").setField("owns", "[style=dotted,arrowhead=odiamond,color=blue]");
        oMainFrame.showProgress("Saving model file..." + modelFile);
        ooutput.saveAsFile(".", modelFile, true);
        dotFile = modelFile.replace("models", "dot").replace("mod", "dot");
        oMainFrame.showProgress("Saving dot file..." + dotFile);
        ooutput.toDot(dotFile);
        oMainFrame.showProgress("Calling dot..." + dotFile);
        pngFile = modelFile.replace("models", "png").replace("mod", "png");
        String tmpFile = modelFile.replace("models", "png").replace("mod", "tmp");
        File f = new File(pngFile);
        if (f.exists()) {
            f.delete();
        }
        String command;
        ProcessBuilder pb;
        Process ps = null;
        try {
            command = "/usr/bin/dot -Tpng " + FileSystems.getDefault().getPath(dotFile).normalize().toAbsolutePath().toString()
                    + "  -o " + FileSystems.getDefault().getPath(pngFile).normalize().toAbsolutePath().toString();
            pb = new ProcessBuilder().command(command.split(" "));
            pb.directory(FileSystems.getDefault().getPath("./").normalize().toAbsolutePath().toFile());
            ps = pb.start();
            ps.waitFor(5000, TimeUnit.MILLISECONDS);

        } catch (Exception ex) {
            System.err.println("Error generating output to " + pngFile + "\n" + ex.toString());
        }

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
        osDiagram.setViewportView(opDiagram);
//        opDiagram.repaint();
//        osDiagram.repaint();
    }

    public static void findAllFiles(OleConfig ocfg) {
        ArrayList<String> folders = new ArrayList(ocfg.getTab("Sources").getArray("Input folders"));

        cleanScan();
        oMainFrame.showProgress("Scanning folders", 0, 10000);
//        oMainFrame.showProgressFrame("Scanning folders", 0, 10000);
        for (String folder : folders) {
            try {
                scanFolder(folder, ocfg);
            } catch (IOException ex) {
                oMainFrame.showError("Unable to access folder " + folder);
            }
        }
        oMainFrame.showInfo("Found " + allfilenames.size() + " files");
    }

    public static void scanFolder(String folder, OleConfig ocfg) throws IOException {
        ArrayList<String> folderlist, filelist;
        File folderinputs[], dir, item;
        OleFile ofile;
//        oMainFrame.showInfo("Scanning folder " + folder + "   ...");
        dir = new File(folder);
        folderinputs = dir.listFiles();
        ofile = new OleFile();
        oMainFrame.showProgress(folder);
        for (int i = 0; i < folderinputs.length; i++) {
            item = folderinputs[i];
            if (item.isDirectory() && !item.getName().startsWith(".")) {
                String fullpath = folder + "/" + item.getName();
                if (fullpath.contains(ocfg.getTab("Sources").getField("Source folders"))) {
                    scanFolder(folder + "/" + item.getName(), ocfg);
                }
            } else if (item.isFile()) {
                if (item.getName().endsWith(ocfg.getTab("Sources").getField("File extension"))) {
//                    System.out.println(item.getName());
                    allfilenames.add(item.getName());
                    ofile.loadFile(folder + "/" + item.getName());
                    allfilecontent.put(item.getName(), ofile.getStringContent());
                    allfilebasher.put(item.getName().replace(".java", ""), new Basher(folder + "/" + item.getName()));
                }
            }
        }
    }

    public static String getClassName(String filename) {
        return filename;
    }

    public static String getPackageName(String filename) {
        return allfilebasher.get(filename).grepv("//").grep("package").sed("package *", "").sed(";", "").toString();
    }

    public static String getExtends(String filename) {
        Basher aux = allfilebasher.get(filename).grepv("//").grep("extends");
        if (aux.toString().length() > 0) {
            return aux.grep("class").toString().replaceAll("public.*extends ", "").replaceAll(" .*\\{.*", "");
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
                if ((line.contains("public") || line.contains("private") || line.contains("protected"))
                        && line.contains("(") && line.contains(")") && !line.contains("new") && !line.startsWith("//")) {
                    smethod = line;
                    smethod = smethod.replace("{", "");
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
//        osDiagram.clear();
//        if (mapDiagram != null) {
//            myg.drawImage(mapDiagram.getMap(), 0, 0, mapDiagram.getWidth(), mapDiagram.getHeight(), null);
//        }

        opDiagram.clear();
        if (mapDiagram != null) {
            myg.drawImage(mapDiagram.getMap(), 0, 0, mapDiagram.getWidth(), mapDiagram.getHeight(), null);
        }
    }
}
