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
import java.awt.event.ActionEvent;
import java.awt.event.ItemEvent;
import java.awt.event.KeyEvent;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.swing.JPanel;
import swing.OleApplication;
import swing.OleDialog;
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
    static String projectFile, modelFile;

    static ArrayList<String> allfilenames, allpackages, allclasses;
    static HashMap<String, String> allfilecontent;
    static HashMap<String, Integer> classusage;
    static HashMap<String, ArrayList<String>> allfullpackages, allextends, allowns, allmethods;
    static HashMap<String, Basher> allfilebasher;
    static String allcolours[] = new String[]{"Chartreuse", "MediumSpringGreen", "Turquoise", "CadetBlue", "MediumAquaMarine", "Thistle", "LightSteelBlue", "DarkViolet", "BlueViolet", "DarkOliveGreen", "Aqua", "OliveDrab", "Cyan", "LightBlue", "Indigo", "DarkSeaGreen", "Crimson", "Orchid", "DarkGreen", "Salmon", "RebeccaPurple", "MediumSlateBlue", "DodgerBlue", "PaleTurquoise", "Fuchsia", "Violet", "DarkTurquoise", "Blue", "SpringGreen", "DarkSlateBlue", "SkyBlue", "MediumBlue", "MidnightBlue", "IndianRed", "ForestGreen", "Lavender", "SlateBlue", "DarkMagenta", "Aquamarine", "DarkOrchid", "Lime", "Teal", "LightSeaGreen", "PowderBlue", "RoyalBlue", "Green", "Plum", "LimeGreen", "MediumOrchid", "FireBrick", "DarkRed", "MediumSeaGreen", "LightSkyBlue", "LightSalmon", "MediumTurquoise", "LightCoral", "DarkSalmon", "GreenYellow", "DeepSkyBlue", "MediumPurple", "LawnGreen", "CornflowerBlue", "PaleGreen", "SteelBlue", "Magenta", "LightCyan", "Navy", "Purple", "Red", "YellowGreen", "DarkCyan", "LightGreen", "SeaGreen", "DarkBlue"};

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
    }

    public static void editProjectListener(ActionEvent e, OleConfig olecfg) {
        if (e.getActionCommand().equals("[Scan files]")) {
            loadAllFiles(olecfg);
            oMainFrame.showInfo("Found " + allfilebasher.keySet().size() + " valid files");
            ArrayList<String> alFileList = new ArrayList();
            for (String s : allfilebasher.keySet()) {
                alFileList.add(s);
            }
            Collections.sort(alFileList);
            olecfg.getTab("Sources").setField("File list", new ArrayList(alFileList));
        } else if (e.getActionCommand().equals("[Scan classes]")) {
            findAllComponents(olecfg);
            findAllClasses(olecfg);
            oMainFrame.showInfo("Found " + allclasses.size() + " valid classes");
            ArrayList<String> alFileList = new ArrayList();
            for (String s : allclasses) {
                alFileList.add(s);
            }
            Collections.sort(alFileList);
            olecfg.getTab("Class diagram").setField("Classes found", new ArrayList(alFileList));
            olecfg.getOle("properties").getOle("Select class").setField("select", new ArrayList(alFileList));
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

    public static void editProject() {
        OleDialog odiag = new OleDialog(oMainFrame, "Project configuration " + projectFile);
        odiag.addActionListener((e, c) -> editProjectListener(e, c));
        if (odiag.run(myProject)) {
            myProject = odiag.getResult();
            oMainFrame.showInfo(" Project " + projectFile + " summary: " + myProject.getTab("Sources").getArray("File list").size() + " files ");
        }
    }

    public static void openProject() {
        projectFile = OleDialog.doSelectFile("./projects", "prj");
        if (projectFile == null) {
            oMainFrame.showStatus(" ");
            return;
        }
        oMainFrame.showInfo("Opening project " + projectFile + " ...");
        myProject = new OleConfig();
        myProject.loadFile(projectFile);
        if (myProject.isEmpty()) {
            oMainFrame.showError("Error loading " + projectFile + " ...");
            projectFile = null;
            return;
        }
        oMainFrame.setTitle(projectFile);

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
            myProject.loadFile("config/empty.json");
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
            openProject();
            editProject();
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
                modelFile = projectFile.replace("prj", "mod").replace("projects","models");
                oMainFrame.showInfo("Generating model ");
                dumpJson(myProject);
            } else {
                oMainFrame.Error("No project found");
            }
        }

        if (e.getActionCommand()
                .equals("About")) {
            oMainFrame.Info("<html><center><h1>ClassDiagram</h1><br><b>Programmed by</b><br><i>Anatoli Grishenko</i></html>");
        }
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

        allclasses = new ArrayList();
        allpackages = new ArrayList();
        allfullpackages = new HashMap();
        allextends = new HashMap();
        allowns = new HashMap();
        allmethods = new HashMap();
        classusage = new HashMap();
        // Reset usage counter
        for (String fromclass : allfilebasher.keySet()) {
            classusage.put(fromclass, 0);
        }
        oMainFrame.showInfo("Analyzing extends ...");
        // Count extends
        for (String sclass : allfilebasher.keySet()) {
            sclassname = getClassName(sclass);
            ssuperclass = getExtends(sclass);
            if (ssuperclass.length() > 0 && classusage.get(ssuperclass) != null) {
                classusage.put(sclassname, classusage.get(sclassname) + 1);
                classusage.put(ssuperclass, classusage.get(ssuperclass) + 1);
            }
        }
        oMainFrame.showInfo("Analyzing data members ...");
        // Count owns
        sorted = new ArrayList(allfilebasher.keySet());
        Collections.sort(sorted.subList(0, sorted.size()));
        for (String fromclass : sorted) {
            datamembers = getDataMembers(fromclass); //frombasher.grepv("//");
            System.out.println("Exploring class " + fromclass + " Found data members > " + datamembers);
            allowns.put(fromclass, datamembers);
            for (String tonew : datamembers) {
                classusage.put(tonew, classusage.get(tonew) + 1);
                classusage.put(fromclass, classusage.get(fromclass) + 1);
            }
        }
        // Methods
        oMainFrame.showInfo("Analyzing methods ...");
        for (String fromclass : sorted) {
            datamembers = getMethods(fromclass); //frombasher.grepv("//");
            System.out.println("Exploring class " + fromclass + " Found Methods > " + datamembers);
            allmethods.put(fromclass, datamembers);
        }
        // Remove unused
        if (ocfg.getTab("Class diagram").getField("Which classes").equals("Referenced")) {
            oMainFrame.showInfo("Removing unused classes ...");
            for (String sclass : sorted) {
                System.out.println("Class usage " + sclass + " : " + classusage.get(sclass));
                if (classusage.get(sclass) == null || classusage.get(sclass) < 1) {
                    allfilebasher.remove(sclass);
                }
            }
        }

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
            oMainFrame.showInfo("Found class " + sclass + " in package " + spackage);
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

    public static void dumpJson(OleConfig olecfg) {
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
        for (String spackage : allfullpackages.keySet()) {
            oMainFrame.showInfo("Exploring package " + spackage);
            oclass.setField(spackage, new ArrayList(allfullpackages.get(spackage)));
            singleformat = new Ole();

            singleformat.setField("face", olecfg.getTab("Class diagram").getOle("Format").getString("Font"));
            singleformat.setField("fontsize", olecfg.getTab("Class diagram").getOle("Format").getInt("Font size"));
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
        if (allextends.size() > 0) {
            for (String ssuperclass : allextends.keySet()) {
                oMainFrame.showInfo("Exploring class " + ssuperclass);
                Ole oaux = new Ole().setField(ssuperclass, new ArrayList(allextends.get(ssuperclass)));
                orelation.addToField("extends", oaux);
            }
        }
        orelation.setField("owns", new ArrayList());
        if (allowns.size() > 0) {
            for (String ssuperclass : allowns.keySet()) {
                oMainFrame.showInfo("Exploring class " + ssuperclass);
                Ole oaux = new Ole().setField(ssuperclass, new ArrayList(allowns.get(ssuperclass)));
                orelation.addToField("owns", oaux);
            }
        }
        ooutput.setField("relation", orelation);
/// Methods
        if (allmethods.size() > 0) {
            orelation = new Ole();

            for (String ssuperclass : allmethods.keySet()) {
                oMainFrame.showInfo("Exploring class " + ssuperclass);
                orelation.setField(ssuperclass, new ArrayList(allmethods.get(ssuperclass)));
            }
            ooutput.setField("methods", orelation);
        }

        ooutput.setField("class", oclass);
        ooutput.setField("format", oformat);
        ooutput.getOle("format").setField("extends", "[arrowhead=onormal,color=black]");
        ooutput.getOle("format").setField("owns", "[style=dotted,arrowhead=odiamond,color=blue]");
        ooutput.saveAsFile(".", modelFile, true);
        ooutput.toDot(modelFile.replace("models", "dot").replace("mod","dot"));
//        try {
//            Runtime.getRuntime().exec("/usr/bin/dot -Tpdf " + myConfig.getField("output") + "/classdiagram.gv " + "  > " + myConfig.getField("output") + "/classdiagram.gv ");
//        } catch (IOException ex) {
//        }
    }

    public static void loadAllFiles(OleConfig ocfg) {
        ArrayList<String> folders = new ArrayList(ocfg.getTab("Sources").getArray("Input folders"));

        allfilenames = new ArrayList();
        allfilecontent = new HashMap();
        allfilebasher = new HashMap();
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
        oMainFrame.showInfo("Scanning folder " + folder + "   ...");
        dir = new File(folder);
        folderinputs = dir.listFiles();
        ofile = new OleFile();
        for (int i = 0; i < folderinputs.length; i++) {
            item = folderinputs[i];
            if (item.isDirectory() && !item.getName().startsWith(".")) {
                String fullpath = folder + "/" + item.getName();
                if (fullpath.contains(ocfg.getTab("Sources").getField("Source folders"))) {
                    scanFolder(folder + "/" + item.getName(), ocfg);
                }
            } else if (item.isFile()) {
                if (item.getName().endsWith(ocfg.getTab("Sources").getField("File extension"))) {
                    System.out.println(item.getName());
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

//    public static void getReferences(String filename) {
//        String fromname;
//        Basher frombasher = allfilebasher.get(filename);
//        if (frombasher.grep("void main\\(").wc() > 0) {
//            return;
//        }
//        if (frombasher.grep("class ").wc() == 0) {
//            return;
//        }
//        fromname = filename.replace(".java", "");
//        for (String toclass : allfilebasher.keySet()) {
//            toclass = toclass.replace(".java", "");
//            if (frombasher.grepv("//").grep(toclass).wc() > 0 && !toclass.equals(fromname)) {
//                classusage.put(toclass, classusage.get(toclass) + 1);
////                    System.out.println("Found reference to "+toclass+": "+classuseslocal.get(toclass));
//            }
//        }
//    }
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
                            System.out.println("Found a new from " + filename + " to " + toclass);
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
                    res.add(line);
                    System.out.println("Found method " + smethod);
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

}
