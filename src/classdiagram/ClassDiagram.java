/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classdiagram;

import Bitmap.LColorBitmap;
import Dot.LDotCanvas;
import Dot.LDotCanvas.ExportDOT;
import static Dot.LDotCanvas.ExportDOT.jpg;
import Exceptions.LException;
import LReflection.LSerializer;
import LReflection.LTypeAbstraction;
import Swing.LApplication;
import Swing.LDialog;
import Swing.LDrawPane;
import Swing.LProgressWindow;
import Swing.LScrollPane;
import Tools.LBashTools;
import Tools.LEmojis;
import Tools.LNewLogger;
import Tools.LSwingTools;
import data.FolderList;
import data.StringList;
import java.awt.Color;
import java.awt.event.ActionEvent;
import java.util.ArrayList;
import java.util.HashMap;
import javax.swing.JPanel;

/**
 *
 * @author Anatoli Grishenko <Anatoli.Grishenko@gmail.com>
 */
public class ClassDiagram {

    static final String NOPROJECT = "nonamed";

    //static OleConfig myConfig, myProject; //, myPreferrences;
    static Project myProject = null;
    static LApplication oMainFrame;
    static JPanel pSideTools, pStatus, pMain;
    static LDrawPane opDiagram;
    static LScrollPane osDiagram;
    static String projectFile = NOPROJECT, modelFile, dotFile, pngFile, pdfFile;

    static ArrayList<String> filenameList, packageList, classesList;
    static HashMap<String, String> filecontenTable;
    static HashMap<String, Integer> classusageTable;
    static HashMap<String, ArrayList<String>> packagesTable, extendsTable, datamenbersTable, publicmethodsTable, protectedmethodsTable;
    static HashMap<String, LBashTools> parsersTable;
//    static String allcolours[] = new String[]{"Chartreuse", "MediumSpringGreen", "Turquoise", "CadetBlue", "MediumAquaMarine", "Thistle", "LightSteelBlue", "DarkViolet", "BlueViolet", "DarkOliveGreen", "Aqua", "OliveDrab", "Cyan", "LightBlue", "Indigo", "DarkSeaGreen", "Crimson", "Orchid", "DarkGreen", "Salmon", "RebeccaPurple", "MediumSlateBlue", "DodgerBlue", "PaleTurquoise", "Fuchsia", "Violet", "DarkTurquoise", "Blue", "SpringGreen", "DarkSlateBlue", "SkyBlue", "MediumBlue", "MidnightBlue", "IndianRed", "ForestGreen", "Lavender", "SlateBlue", "DarkMagenta", "Aquamarine", "DarkOrchid", "Lime", "Teal", "LightSeaGreen", "PowderBlue", "RoyalBlue", "Green", "Plum", "LimeGreen", "MediumOrchid", "FireBrick", "DarkRed", "MediumSeaGreen", "LightSkyBlue", "LightSalmon", "MediumTurquoise", "LightCoral", "DarkSalmon", "GreenYellow", "DeepSkyBlue", "MediumPurple", "LawnGreen", "CornflowerBlue", "PaleGreen", "SteelBlue", "Magenta", "LightCyan", "Navy", "Purple", "Red", "YellowGreen", "DarkCyan", "LightGreen", "SeaGreen", "DarkBlue"};
    static LColorBitmap mapDiagram;
    static int ppp = 150;

    static int rpaint = 0;
    static LDotCanvas ooutput;
    static final String PFOLDER = "./projects/";
    static LProgressWindow lpW;
    static LNewLogger ln;
    @LSerializer(Description = "La descripcion")
    static LDotCanvas.ExportDOT expTo=jpg;
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {

        try {
            ln = new LNewLogger();
            ln.setEcho(true);
        } catch (Exception ex) {
            ln = null;
            LException.LExceptionReport(ex);
        }
        oMainFrame = new LApplication("Class_Diagrams");
//        oMainFrame.editConfiguration();
        oMainFrame.boot();
        oMainFrame.setActionProcessor((e) -> frameActionListener(e));
        opDiagram = oMainFrame.getDrawingPane();
        osDiagram = oMainFrame.getScollPane();
        osDiagram.setScrollable(true);
        osDiagram.setZoomable(true);
        osDiagram.setDragable(true);
        reLayout();
//        if (lpW == null) {
//            lpW = new LProgressWindow("", 0);
//        }
//        if (openProject(PFOLDER + "/minilarva.prj")) {
////////            myProject.retrieveFiles();
////////            myProject.retrieveFiles();
//            buildProject("ALL");
//        }
    }

    /// GUI
    public static boolean isProject() {
        return myProject != null;
    }

    public static boolean isProjectName() {
        return isProject() && !projectFile.equals(NOPROJECT);
    }

    public static void adjustProject() {
        if (myProject.getPackageSelection().length < 1) {
            myProject.setPackageSelection(myProject.getPackagesList());
        }
    }

    public static void closeProject() {
        if (isProject()) {
            projectFile = NOPROJECT;
            myProject = null;
            if (lpW != null) {
                lpW.dispose();
                lpW = null;
            }

        }

    }

    public static void resetProject() {
        if (isProject()) {
            if (lpW == null) {
                lpW = new LProgressWindow(myProject.getName());
                oMainFrame.showProgress(myProject.getName(), 0, 100);
                ln.setRemoteOut((c) -> lpW.addMessage(c));
            }
            osDiagram.removeBackgroundImage();
        }
    }

    public static void reLayout() {
        System.out.println("App relayout!");

//        LSwingTools.doSwingBackground(() -> {
        if (isProject()) {
            oMainFrame.setTitle(myProject.getName());
            if (lpW != null) {
                lpW.setTitle(myProject.getName());
            }
            showProjectSummary();
        }
//        });
    }

    public static void showProjectSummary() {
        oMainFrame.cleanStatus();
        if (isProject()) {
            oMainFrame.showStatus(" Project " + projectFile + " "
                    + "     " + LEmojis.FOLDER + " " + myProject.getFilesList().length + " files"
                    + "     " + LEmojis.PACKAGE + " " + +myProject.getPackagesList().length + " packages"
                    + "     " + LEmojis.CLASS + " " + +myProject.getClassesList().length + " classes"
            //                    + "           " + LEmojis.MAGNIFIER + " " + String.format("%3.1f", osDiagram.getZoom())
            //            + "     " + String.format("%03dx%03d", ooutput.getWidth(), ooutput.getHeight())
            );
        }

    }

    /// Commands
    public static boolean buildProject() {
        if (isProject()) {
            return buildProject("ALL");
        } else {
            return false;
        }
    }

    public static void inform(String message) {
        if (lpW != null) {
            lpW.addMessage(message);
        }
    }

    public static boolean buildProject(String from) {
        try {
            LSwingTools.doSwingBackground(() -> {
//            myProject.sendOutTo(ln);
//            lpW.clear();
//            lpW.setVisible(true);
                reLayout();
                resetProject();
                lpW.setVisible(true);
                ln.setRemoteOut((c) -> lpW.addMessage(c));
                myProject.sendOutTo(ln);
                lpW.setTitle("Building project " + myProject.getName());
                oMainFrame.showProgress("Building project " + myProject.getName(), 0, 100);
                myProject.clear();
//            oMainFrame.Confirm("Que?");
                switch (from) {
                    default:
                    case "ALL":
                    case "FROMFOLDERS":
                        lpW.reset(50);
                        lpW.addMessage("\n\n================= RETRIEVING FILES\n\n", 0);
                        oMainFrame.showProgress("Retrieving files", 10);
                        myProject.retrieveFiles();
//                    lpW.done();
                        lpW.addMessage("\n\n================= LOADING FILES\n\n");
                        lpW.reset(myProject.getFilesList().length);
                        oMainFrame.showProgress("Loading files", 10);
                        try {
                            myProject.loadFiles();
                        } catch (Exception ex) {
                            LException.LExceptionReport(ex);
                        }
//                    lpW.done();
                        lpW.addMessage("\n\n================= SEEKING FOR PACKAGES\n\n");
                        lpW.reset(myProject.getFilesList().length);
                        oMainFrame.showProgress("Seeking packages files", 10);
                        myProject.findAllPackages();
//                    lpW.done();
                    case "FROMPACKAGES":
                        lpW.addMessage("\n\n================= SEEKING FOR VALID CLASSES\n\n");
                        lpW.reset(myProject.getFilesList().length);
                        oMainFrame.showProgress("Seeking classes", 10);
                        myProject.findAllClasses();
//                    lpW.done();
                    case "FROMCLASSES":
                        lpW.addMessage("\n\n================= SEEKING DEPENDENCIES\n\n");
                        lpW.reset(myProject.getFilesList().length * 2);
                        oMainFrame.showProgress("Analyzing dependencies", 10);
                        myProject.findUsage();
//                    lpW.done();
                }
                showProjectSummary();
                oMainFrame.closeProgress();
                if (myProject.saveDot()) {
                    LColorBitmap lcb = myProject.getBitmap();
                    osDiagram.setBackgroundImage(lcb);
                    showProjectSummary();
                    lpW.done();
                } else {
                    oMainFrame.Error("Exporting dot", "Error while writing Dot file");
                }
            });
            return true;
        } catch (Exception ex) {
            LException.LExceptionReport(ex);
            return false;
        }

    }

    public static boolean openProject() {
        String aux;
        LSwingTools.doSwingBackground(() -> {
            if (isProject()) {
                if (oMainFrame.Confirm("Save changes to project?")) {
                    saveProject();
                }
            }
            closeProject();
//            myProject = null;
            projectFile = LDialog.doSelectFile(PFOLDER, "prj");
            if (projectFile != null) {
                oMainFrame.showInfo("Opening project " + projectFile + " ...");
                try {
                    myProject = (Project) LTypeAbstraction.loadObject("", projectFile);
                    if (myProject != null) {
                        resetProject();
                        reLayout();
//                    oMainFrame.setTitle(myProject.getName());
//                    myProject.sendOutTo(ln);
//                    osDiagram.removeBackgroundImage();
                        oMainFrame.Info("Project " + projectFile + " succesfully loaded");
                    } else {
                        oMainFrame.Error("Unable to open project " + projectFile);
                    }
                } catch (Exception ex) {
                    oMainFrame.Error("Unable to open project " + projectFile);

                }
            }

        });
        return true;
    }

    public static void editProject() {
//        LSwingTools.doSwingBackground(() -> {
        if (isProject()) {
            LTypeAbstraction.editObject(myProject);
        } else {
            oMainFrame.Error("Missing project");
        }
//        });
    }
//

    public static void newProject() {

        if (isProject()) {
            if (oMainFrame.Confirm("Save changes to project?")) {
                if (isProjectName()) {
                    saveProject();
                } else {
                    saveAsProject();
                }
            }
        }
        projectFile = NOPROJECT;
        LSwingTools.doSwingBackground(() -> {
            myProject = new Project();
            resetProject();
            reLayout();
        });
    }

    public static void saveProject() {
        LSwingTools.doSwingBackground(() -> {

            if (isProject()) {
                if (!isProjectName()) {
                    saveAsProject();
                } else {
                    if (LTypeAbstraction.saveObject(myProject, "./", projectFile)) {
                        oMainFrame.Info("Project " + projectFile + " saved succesfuly...");
                    } else {
                        oMainFrame.Error("Save project", "Error saving project " + projectFile + " in folder " + PFOLDER);
                    }
                }
            } else {
                oMainFrame.Error("Save project", "There is no project yet");
            }
        });
    }
//

    public static void saveAsProject() {

        String saveasFile = oMainFrame.doSaveAsFile(PFOLDER);
        if (saveasFile != null) {
            projectFile = saveasFile;
            saveProject();
        }
    }

    public static void exportTo() {
        String exto="Luis";
        exto = oMainFrame.readSelect("Export to:", "Please select format", new String[]{"jpg","pdf"}, exto);
            
        if (exto != null) {
            if (myProject.saveDot(ExportDOT.valueOf(exto))) {
                LSwingTools.Info("Export project", "Exporting to "+LDotCanvas.ExportDOT.valueOf(exto));
            } else {
                LSwingTools.Error("Export project", "Faileñd to export to "+myProject.getName()+"."+expTo.name());                             
            }
        }
   }

    public static void selectFolders() {
        if (isProject()) {
            FolderList fl = new FolderList();
            fl.setInputFolders(myProject.getInputFolders());
            if (LTypeAbstraction.editObject(fl)) {
                myProject.setInputFolders(fl.getInputFolders());
            }
        }
    }

    public static void selectPackages() {
        StringList fl = new StringList();
        if (myProject.getPackageSelection().length < 1) {
            fl.setInputString(myProject.getPackagesList());
        } else {
            fl.setInputString(myProject.getPackageSelection());
        }
        if (LTypeAbstraction.editObject(fl)) {
            myProject.setPackageSelection(fl.getInputString());
        }
    }

    /// Steps
////    /////// LISTENERS
    public static void frameActionListener(ActionEvent e) {
        System.out.println("Listener");
        if (e.getActionCommand().equals("Exit")) {
            if (lpW != null) {
                lpW.dispose();
            }
            oMainFrame.dispose();
        }
        if (e.getActionCommand().equals("NewProject")) {
            newProject();
        }

        if (e.getActionCommand().equals("SaveProject")) {
            saveProject();
        }
//
        if (e.getActionCommand().equals("SaveAs")) {
            saveAsProject();
        }
//
        if (e.getActionCommand().equals("OpenProject")) {
            openProject();
        }
        if (e.getActionCommand().equals("EditProject")) {
            editProject();
        }
        if (e.getActionCommand().equals("BuildProject")) {
            buildProject("ALL");
//            oMainFrame.Confirm("Zí o No");
        }
        if (e.getActionCommand().equals("SelectFolders")) {
            selectFolders();
        }
        if (e.getActionCommand().equals("SelectPackages")) {
            selectPackages();
        }
        if (e.getActionCommand().equals("ExportTo")) {
            exportTo();
        }
    }
//    public static void frameActionListener(ActionEvent e) {
////        /// TBM
////        if (e.getActionCommand().equals("SetZoom")) {
////            String newZoom = oMainFrame.inputSelect("Select zoom", new String[]{"10", "5", "1.5", "1.25", "1", "0.75", "0.5", "0.25", "Fix to Width", "fix to Height"}, "1");
////            if (newZoom != null) {
////                if (newZoom.contains("Height")) {
////                    osDiagram.setZoom(mapDiagram.getHeight() / oMainFrame.getHeight());
////                } else if (newZoom.contains("Width")) {
////                    osDiagram.setZoom(mapDiagram.getWidth() / oMainFrame.getWidth());
////                } else {
////                    osDiagram.setZoom(Double.parseDouble(newZoom));
////                }
////            }
////        }
////        if (e.getActionCommand().equals("SelectResolution")
////                || e.getActionCommand().equals("SelectArrows")
////                || e.getActionCommand().equals("SelectFont")) {
////            OleDialog odClasses = new OleDialog(oMainFrame, "Display");
////            odClasses.addActionListener((e2, c2) -> editProjectListener(e2, c2));
////            if (odClasses.run(myProject, "Display")) {
////                myProject = odClasses.getResult();
////                ooutput.setWidth(myProject.getTab("Display").getOle("Output").getInt("Width", 16));
////                ooutput.setHeight(myProject.getTab("Display").getOle("Output").getInt("Height", 16));
////                ooutput.setFill(myProject.getTab("Display").getOle("Output").getBoolean("Fill", true));
////                buildProject(myProject, true);
////                showProjectSummary();
////            }
////        }
//        if (e.getActionCommand().equals("Exit")) {
//            oMainFrame.dispose();
////            if (oMainFrame.Confirm("Really want to exit?")) {
////                oMainFrame.dispose();
////                System.exit(0);
////            }
//        }
//        if (e.getActionCommand().equals("NewProject")) {
//            newProject();
//        }
////            if (projectFile != null) {
////                if (oMainFrame.Confirm("Save changes to project?")) {
////                    if (projectFile != null) {
////                        saveProject();
////                    } else {
////                        saveAsProject();
////                    }
////                }
////            }
////            projectFile = "./projects/nonamed.prj";
////            myProject = new OleConfig();
////            myProject.loadFile("projects/empty.prj");
////            oMainFrame.setTitle(projectFile);
////            oMainFrame.showInfo("New empy project ");
////            editProject();
////            osDiagram.setZoom(1);
////            ooutput.setWidth(myProject.getTab("Display").getOle("Output").getInt("Width", 16));
////            ooutput.setHeight(myProject.getTab("Display").getOle("Output").getInt("Height", 16));
////            ooutput.setFill(myProject.getTab("Display").getOle("Output").getBoolean("Fill", true));
////            buildProject(myProject, true);
////        }
////
////        if (e.getActionCommand().equals("SaveProject")) {
////            if (projectFile == null) {
////                saveAsProject();
////            } else {
////                saveProject();
////            }
////        }
////
////        if (e.getActionCommand().equals("SaveAs")) {
////            saveAsProject();
////        }
////
//        if (e.getActionCommand().equals("OpenProject")) {
//            if (projectFile != null) {
//                if (oMainFrame.Confirm("Save changes to project?")) {
//                    if (projectFile != null) {
//                        saveProject();
//                    } else {
//                        saveAsProject();
//                    }
//                }
//            }
//            if (openProject(null)) {
//                osDiagram.setZoom(1);
////                ooutput.setWidth(myProject.getTab("Display").getOle("Output").getInt("Width", 16));
////                ooutput.setHeight(myProject.getTab("Display").getOle("Output").getInt("Height", 16));
////                ooutput.setFill(myProject.getTab("Display").getOle("Output").getBoolean("Fill", true));
////                buildProject(myProject, true);
//                showProjectSummary();
//            }
//        }
//        if (e.getActionCommand().equals("EditProject")) {
//            editProject();
//        }
//        if (e.getActionCommand().equals("SaveProject")) {
//            saveProject();
//        }
//        if (e.getActionCommand().equals("SaveAs")) {
//            saveAsProject();
//        }
//        if (e.getActionCommand().equals("SelectFolders")) {
//            selectFolders();
//        }
//        if (e.getActionCommand().equals("SelectPackages")) {
//            selectPackages();
//        }
////        if (e.getActionCommand().equals("ExportModel")) {
////            if (projectFile != null) {
////                if (publicmethodsTable == null) {
////                    scanClasses(myProject);
////                }
////                String type = oMainFrame.inputSelect("Export To", new String[]{"pdf", "png", "svg"}, "pdf");
////                if (type != null) {
////                    String mydotFile = projectFile.replace("projects/", "dot/").replace("prj", "dot");
////                    OleDot.exportTo(mydotFile, myProject.getTab("Display").getOle("Output").getString("Layout", "dot"), type);
////                    oMainFrame.Info("export generated");
////                }
////
////            } else {
////                oMainFrame.Error("No project found");
////            }
////        }
////
////        if (e.getActionCommand().equals("GenerateModel")) {
////            buildProject(myProject, true);
////            showProjectSummary();
////            oMainFrame.Info("Model generated");
////        }
////        if (e.getActionCommand().equals("SelectPackages")) {
////            OleDialog odPackages = new OleDialog(oMainFrame, "Select packages");
////            odPackages.addActionListener((e2, c2) -> editProjectListener(e2, c2));
////            if (odPackages.run(myProject, "Packages")) {
////                myProject = odPackages.getResult();
////                ooutput.setWidth(myProject.getTab("Display").getOle("Output").getInt("Width", 16));
////                ooutput.setHeight(myProject.getTab("Display").getOle("Output").getInt("Height", 16));
////                ooutput.setFill(myProject.getTab("Display").getOle("Output").getBoolean("Fill", true));
////                buildProject(myProject, true);
////                showProjectSummary();
////            }
////        }
////
////        if (e.getActionCommand().equals("SelectClasses")) {
////            OleDialog odClasses = new OleDialog(oMainFrame, "Select classes");
////            odClasses.addActionListener((e2, c2) -> editProjectListener(e2, c2));
////            if (odClasses.run(myProject, "Classes")) {
////                myProject = odClasses.getResult();
////                ooutput.setWidth(myProject.getTab("Display").getOle("Output").getInt("Width", 16));
////                ooutput.setHeight(myProject.getTab("Display").getOle("Output").getInt("Height", 16));
////                ooutput.setFill(myProject.getTab("Display").getOle("Output").getBoolean("Fill", true));
////                buildProject(myProject, true);
////                showProjectSummary();
////            }
////
////        }
////        if (e.getActionCommand().equals("Thicker")) {
////            ooutput.setWidth(ooutput.getWidth() + 1);
////            buildProject(myProject, true);
////            showProjectSummary();
////        }
////        if (e.getActionCommand().equals("Narrower")) {
////            ooutput.setWidth(ooutput.getWidth() - 1);
////            buildProject(myProject, true);
////            showProjectSummary();
////        }
////        if (e.getActionCommand().equals("Taller")) {
////            ooutput.setHeight(ooutput.getHeight() + 1);
////            buildProject(myProject, true);
////            showProjectSummary();
////        }
////        if (e.getActionCommand().equals("Shorter")) {
////            ooutput.setHeight(ooutput.getHeight() - 1);
////            buildProject(myProject, true);
////            showProjectSummary();
////        }
////
//        if (e.getActionCommand()
//                .equals("About")) {
//            oMainFrame.Info("<html><center><h1>ClassDiagram</h1><br><b>Programmed by</b><br><i>Anatoli Grishenko</i></html>");
//        }
//    }
//    //
//    //    public static void frameKeyListener(KeyEvent e) {
//    ////        oMainFrame.Info("Keyboard event " + e.getKeyChar());
//    //    }
//    //
//    //    public static void editProjectListener(ActionEvent e, OleConfig olecfg) {
//    //        if (e.getActionCommand().equals("[Scan files]")) {
//    //            scanFiles(olecfg);
//    //        } else if (e.getActionCommand().equals("[Scan classes]")) {
//    //            scanClasses(olecfg);
//    //        } else if (e.getActionCommand().equals("[Show methods]")) {
//    //            String classname = olecfg.getProperties().getOle("Classes found").getField("selected");
//    //            if (classname != null && classname.length() > 0) {
//    //                ArrayList<String> alFileList = new ArrayList();
//    //                for (String s : publicmethodsTable.get(classname)) {
//    //                    alFileList.add(s);
//    //                }
//    //                Collections.sort(alFileList);
//    //                olecfg.getTab("Classes").setField("Methods found", new ArrayList(alFileList));
//    //            }
//    //        } else if (e.getActionCommand().equals("[Scan packages]")) {
//    //            scanPackages(olecfg);
//    //        } else if (e.getActionCommand().equals("[Select packages]")) {
//    //            for (String fpackage : new ArrayList<String>(olecfg.getProperties().getOle("Packages found").getArray("selected"))) {
//    //                if (!olecfg.getTab("Packages").getArray("Packages selected").contains(fpackage)) {
//    //                    olecfg.getTab("Packages").addToField("Packages selected", fpackage);
//    //                }
//    //            }
//    //
//    //        } else if (e.getActionCommand().equals("[Select classes]")) {
//    //            for (String fclass : new ArrayList<String>(olecfg.getProperties().getOle("Classes found").getArray("selected"))) {
//    //                if (!olecfg.getTab("Classes").getArray("Classes selected").contains(fclass)) {
//    //                    olecfg.getTab("Classes").addToField("Classes selected", fclass);
//    //                }
//    //                if (!olecfg.getTab("Classes").getArray("Show methods").contains(fclass)) {
//    //                    olecfg.getTab("Classes").addToField("Show methods", fclass);
//    //                }
//    //            }
//    //        } else if (e.getActionCommand().equals("[Reset packages]")) {
//    //            olecfg.getTab("Packages").setField("Packages found", new ArrayList(myProject.getTab("Packages").getArray("Packages found")));
//    //        } else if (e.getActionCommand().equals("[Reset classes]")) {
//    //            olecfg.getTab("Classes").setField("Classes found", new ArrayList(myProject.getTab("Classes").getArray("Classes found")));
//    //            olecfg.getTab("Classes").setField("Show methods", new ArrayList(myProject.getTab("Classes").getArray("Show methods")));
//    //        } else {
//    //            oMainFrame.Error(e.getActionCommand() + " Undefined answer");
//    //        }
//    //    }
//    //
//    //    /////////////  COMMANDS
//    //    public static void scanFiles(OleConfig olecfg) {
//    //        findUsage(new ArrayList<String>(), olecfg);
//    //        oMainFrame.Info("Found " + olecfg.getTab("Sources").getArray("File list").size() + " files");
//    //    }
//    //
//    //    public static void scanPackages(OleConfig olecfg) {
//    //        findAllPackages(olecfg.getTab("Sources").getArray("File list"), olecfg);
//    //        oMainFrame.Info("Found " + olecfg.getTab("Packages").getArray("Packages found").size() + " packages");
//    //    }
//    //
//    //    public static void scanClasses(OleConfig olecfg) {
//    //        findAllClasses(olecfg.getTab("Packages").getArray("Packages selected"), olecfg);
//    //        oMainFrame.Info("Found " + olecfg.getTab("Classes").getArray("Classes found").size() + " classes");
//    //    }
//    //
//
///
//
//        clearFiles();
//        clearModel();
//        clearMethods();
//        findAllPackages(p);
//        findAllClasses(p);
//        retrieveFiles(p);
//        findUsage(p);
//        findAllMethods(p);
////        modelFile = projectFile.replace("prj", "mod").replace("projects", "models");        
//        saveDot(p, simplified);
////        osDiagram.repaint();
////    }
////
////    ////////////////// seek disk items
//
//    public static void clearFiles() {
//        filenameList = new ArrayList();
//        allfilecontent = new HashMap();
//        allfilebasher = new HashMap();
//        classesList = new ArrayList();
//        clearModel();
//    }
////
//
//    public static void clearModel() {
//        packageList = new ArrayList();
//        packagesTable = new HashMap();
//        extendsTable = new HashMap();
//        datamenbersTable = new HashMap();
//        classusageTable = new HashMap();
//        mapDiagram = null;
//        ooutput = new LDotCanvas();
//    }
////
//
//    public static void clearMethods() {
//        publicmethodsTable = new HashMap();
//        protectedmethodsTable = new HashMap();
//    }
////
//
//    public static void retrieveFolders(String padding, String folder) throws IOException {
//        File folderinputs[], dir, item;
//        LFile ofile;
//        dir = new File(folder);
//        folderinputs = dir.listFiles();
//        ofile = new LFile();
////        oMainFrame.showProgress(padding + "Found folder " + folder+folderinputs);
//        System.out.println(padding + "Exploring folder " + folder);
//        for (int i = 0; i < folderinputs.length; i++) {
//            item = folderinputs[i];
//            if (item.isDirectory() && !item.getName().startsWith(".")) {
//                String fullpath = folder + "/" + item.getName();
//                if (fullpath.contains(myProject.getSourceFolders())) {
//                    retrieveFolders(padding + "   ", folder + "/" + item.getName());
//                }
//            } else if (item.isFile()) {
//                if (item.getName().endsWith(myProject.getFileExtension())) {
//                    ofile = new LFile();
//                    ofile.setFilename(folder + "/" + item.getName());
//                    ofile.loadFileASCII();//folder + "/" + item.getName());
//                    filenameList.add(item.getName());
//                    allfilecontent.put(item.getName(), ofile.getFilecontent());
//                    allfilebasher.put(getClassName(item.getName()), new LBashTools(folder + "/" + item.getName()));
////                    allfilebasher.put(item.getName().replace(".java", ""), new LBashTools(folder + "/" + item.getName()));
////                    oMainFrame.showProgress(padding + "Found file " + item.getName());
//                    System.out.println(padding + "   Found file " + item.getName());
//                    myProject.addFileList(item.getName());
//                }
//            }
////            oMainFrame.Confirm("Next");
//        }
//    }
////
//
//    public static void retrieveFiles(Project p) {
////        ArrayList<String> folders = new ArrayList(myProject.getTab("Sources").getArray("Input folders"));
//
//        clearFiles();
//        p.setFilesList(new String[0]);
////        oMainFrame.showProgress("Seeking info on disk", 0, 50);
////        oMainFrame.showProgress("Seeking folders");
//        for (String folder : p.getInputFolders()) {
//            try {
//                retrieveFolders("   ", folder);
//            } catch (IOException ex) {
//                LException.LExceptionReport(ex);
////                oMainFrame.showError("Unable to access folder " + folder);
//            }
//        }
//        System.out.println("Found " + filenameList.size() + " files\n");
////        oMainFrame.showProgress("Found " + filenameList.size() + " files\n");
//        findUsage(p);
//    }
////
//
//    public static void findUsage(Project p) {
//        ArrayList<String> datamembers;
//        String sclassname, ssuperclass;
//        ArrayList<String> filesal;
//        if (p.getFilesList().length < 1) {
//            retrieveFiles(p);
//            filesal = new ArrayList(allfilebasher.keySet());
//        } else {
//            filesal = new ArrayList(LTypeAbstraction.toArrayList(p.getFilesList()));
//        }
//        Collections.sort(filesal);
//        p.setFilesList(LTypeAbstraction.toArrayString(filesal));
//        // Reset usage counter
//        for (String fromclass : p.getFilesList()) {
//            classusageTable.put(getClassName(fromclass), 1);
//        }
////        oMainFrame.showProgress("Analyzing java dependencies");
////        oMainFrame.showProgress("Analyzing classes and superclasses");
//        System.out.println("Analyzing java dependencies");
//        System.out.println("Analyzing classes and superclasses");
//        // Count extends
//        for (String sclass : p.getFilesList()) {
//            sclassname = getClassName(sclass);
//            ssuperclass = getExtends(sclassname);
//            if (ssuperclass.length() > 0) {
//                if (classusageTable.get(ssuperclass) == null) {
//                    classusageTable.put(ssuperclass, 1);
//                }
//                System.out.println("   " + sclassname + " extends " + ssuperclass);
////                oMainFrame.showProgress("   " + sclassname + " extends " + ssuperclass);
//                classusageTable.put(sclassname, classusageTable.get(sclassname) + 1);
//                classusageTable.put(ssuperclass, classusageTable.get(ssuperclass) + 1);
//            }
//        }
//        // Count owns
////        Collections.sort(files.subList(0, files.size()));
//        System.out.println("Analyzing data members");
//        for (String fromclass : filesal) {
//            datamembers = getDataMembers(getClassName(fromclass)); //frombasher.grepv("//");
//            datamenbersTable.put(getClassName(fromclass), datamembers);
////            oMainFrame.showProgress("   " + fromclass);
//            for (String tonew : datamembers) {
//                classusageTable.put(tonew, classusageTable.get(tonew) + 1);
//                classusageTable.put(fromclass, classusageTable.get(getClassName(fromclass)) + 1);
//                System.out.println("       " + fromclass + "." + tonew);
////                oMainFrame.showProgress("       " + fromclass + "." + tonew);
//            }
//        }
////        // Methods
//        System.out.println("Analyzing methods");
////        oMainFrame.showProgress("Analyzing methods");
//        for (String fromclass : filesal) {
//            String key = getClassName(fromclass);
//            datamembers = getMethods(key, "public"); //frombasher.grepv("//");
//            publicmethodsTable.put(key, datamembers);
//            if (datamembers.size() > 0) {
//                System.out.println("   " + key + "+" + datamembers.toString());
////                oMainFrame.showProgress("   " + fromclass + "+" + datamembers.toString());
//            }
//            datamembers = getMethods(key, "protected"); //frombasher.grepv("//");
//            protectedmethodsTable.put(key, datamembers);
//            if (datamembers.size() > 0) {
//                System.out.println("   " + key + "-" + datamembers.toString());
////                oMainFrame.showProgress("   " + key + "-" + datamembers.toString());
//            }
//        }
//        // Remove unused
//        if (p.getWhichClasses().equals("Referenced")) {
//            System.out.println("Removing unused classes");
////            oMainFrame.showProgress("Removing unused classes");
//            for (String sclass : filesal) {
//                if (classusageTable.get(getClassName(sclass)) == null || classusageTable.get(getClassName(sclass)) < 1) {
//                    allfilebasher.remove(getClassName(sclass));
//                    System.out.println("   Removig unused class " + sclass);
////                    oMainFrame.showProgress("   Removig unused class " + sclass);
//                }
//            }
//        }
//        System.out.println("End of analysis");
////        oMainFrame.showProgress("End of analysis");
//
//    }
////
//
//    public static void findAllMethods(Project p) {
//        ArrayList<String> datamembers;
//        clearMethods();
//        // Methods
//        System.out.println("Analyzing methods");
////        oMainFrame.showProgress("Analyzing methods");
//        for (String fromclass : allfilebasher.keySet()) {
//            String key = getClassName(fromclass);
//            datamembers = getMethods(key, "public");
//            datamembers.addAll(getMethods(key, "protected")); //frombasher.grepv("//");
//            publicmethodsTable.put(key, datamembers);
//            if (datamembers.size() > 0) {
//                System.out.println("   " + key + "+" + datamembers.toString());
////                oMainFrame.showProgress("   " + fromclass + "+" + datamembers.toString());
//            }
//            datamembers = getMethods(key, "protected"); //frombasher.grepv("//");
//            protectedmethodsTable.put(key, datamembers);
//            if (datamembers.size() > 0) {
//                System.out.println("   " + key + "-" + datamembers.toString());
////                oMainFrame.showProgress("   " + fromclass + "-" + datamembers.toString());
//            }
//        }
//        // Remove unused
//        if (p.getWhichClasses().equals("Referenced")) {
//            System.out.println("Removing unused classes");
////            oMainFrame.showProgress("Removing unused classes");
//            for (String sclass : allfilebasher.keySet()) {
//                if (classusageTable.get(getClassName(sclass)) == null || classusageTable.get(getClassName(sclass)) < 1) {
//                    allfilebasher.remove(getClassName(sclass));
//                    System.out.println("   Removig unused class " + sclass);
////                    oMainFrame.showProgress("   Removig unused class " + sclass);
//                }
//            }
//        }
//
//    }
////
//
//    public static void findAllPackages(Project p) {
//        String sclasscontent, spackage, ssuperclass;
////        oMainFrame.showProgress("Selecting packages");
//        p.setPackagesList(new String[0]);
//        packagesTable.put("extern", new ArrayList<String>());
//        for (String sclass : p.getFilesList()) {
//            sclasscontent = getClassName(sclass);
//            spackage = getPackageName(sclasscontent);
//            if (spackage.length() < 1) {
//                continue;
//            }
//            if (!packageList.contains(spackage)) {
//                System.out.println(" found package " + spackage);
//                packageList.add(spackage);
////                oMainFrame.showProgress("   " + spackage);
//            }
//            if (!packagesTable.keySet().contains(spackage)) {
//                packagesTable.put(spackage, new ArrayList<String>());
//            }
//            packagesTable.get(spackage).add(sclasscontent);
//        }
//
//        ArrayList<String> lAux = new ArrayList(packageList);
//        Collections.sort(lAux);
//        p.setPackagesList(LTypeAbstraction.toArrayString(lAux));
//    }
////
//
//    public static void findAllClasses(Project p) {
//        String sclasscontent, spackage, ssuperclass;
//        String[] filelist = p.getFilesList();
//        p.setClassesList(new String[0]);
//
//        for (String sclass : filelist) {
//            sclasscontent = getClassName(sclass);
//            spackage = getPackageName(sclasscontent);
//            if (!classesList.contains(sclasscontent)) {
//                int npack = 0;
//                for (String spack : p.getPackageSelection()) {
//                    if (packageList.get(npack).contains(sclasscontent)) {
//                        npack++;
//                    }
//                }
//                if (npack > 0) {
//                    classesList.add(sclasscontent);
//                    ssuperclass = getExtends(sclasscontent);
//                    if (ssuperclass.length() > 0) {
//                        if (!classesList.contains(ssuperclass)) {
//                            classesList.add(ssuperclass);
//                        }
//                        if (!extendsTable.keySet().contains(ssuperclass)) {
//                            extendsTable.put(ssuperclass, new ArrayList<String>());
//                        }
//                        extendsTable.get(ssuperclass).add(sclasscontent);
//                        if (!LTypeAbstraction.Belongs(filelist, ssuperclass)) {
//                            packagesTable.get("extern").add(ssuperclass);
//                        }
//                        System.out.println("Found class " + sclasscontent + " extends " + ssuperclass);
//                    } else {
//                        System.out.println("Found class " + sclasscontent);
//                    }
//                }
//            }
//
//        }
//        ArrayList<String> lAux = new ArrayList(classesList);
//        Collections.sort(lAux);
//        p.setClassesList(LTypeAbstraction.toArrayString(lAux));
//    }
////
////    public static void findAll(OleConfig olecfg) {
////        findAllClasses(new ArrayList<String>(), olecfg);
////    }
////
//
//    public static void saveDot(Project p, boolean simplified) {
//        HashMap<String, String> boxcolors = new HashMap();
//        ooutput = new LDotCanvas();
//        ooutput.setDpi(p.getDpiResolution());
//        ooutput.setWidth(p.getWidthInches());
//        ooutput.setHeight(p.getHeightInches());
//        LDotObject.setDefaultFont(LDotObject.DotFont.valueOf(p.getFont()));
//        LDotObject.setDefaultFontsize(p.getFontSize());
//        // Sets resolution
////        try {
////            ooutput.(Integer.parseInt(p.getDpiResolution()));
////        } catch (Exception Ex) {
////            ooutput.setResolution(150);
////        }
//        // Add extern packages
////        ArrayList<String> classtypes = new ArrayList(LTypeAbstraction.toArrayList(p.getPackagesList()));
////        classtypes.add("extern");
//////        ooutput.setField("classtypes", new ArrayList(classtypes));
////        ArrayList<String> alaux = new ArrayList();
////        alaux.add("extends");
////        alaux.add("owns");
//////        ooutput.setField("relationtypes", new ArrayList(alaux));
//////        oclass = new Ole();
//////        oformat = new Ole();
////        int ncolor = 0;
////        if (simplified) {
////            System.out.println("Generating dot model");
//////            oMainFrame.showProgress("Generating dot model", 1, 1000);
////        } else {
////            System.out.println("Generating dot model");
//////            oMainFrame.showProgressFrame("Generating dot model", 1, 1000);
////        }
////        System.out.println("Exploring packages...");
//////        oMainFrame.showProgress("Exploring packages...");
////        String[] prefPackages = p.getPackagesList();
////        String[] prefClasses = p.getClassesList();
//        ArrayList<String> prefPackages = new ArrayList(LTypeAbstraction.toArrayList(p.getPackagesList())),
//                prefClasses = new ArrayList(LTypeAbstraction.toArrayList(p.getClassesList()));
////                methClasses = new ArrayList(LTypeAbstraction.toArrayList(p.get
////
////        // add format for every package
////        oclass.setField("extern", new ArrayList(selectPreferred(packagesTable.get("extern"), prefClasses))); //////
////        /// Classes listed but their packages are not, are included as external
////        boolean found;
////        for (String sprefclass : prefClasses) {
////            found = false;
////            for (String sprefpack : prefPackages) {
////                if (packagesTable.get(sprefpack).contains(sprefclass)) {
////                    found = true;
////                }
////            }
////            if (!found) {
////                packagesTable.get("extern").add(sprefclass);
////            }
////        }
////        prefPackages.add("extern");
////        for (String spackage : prefPackages) {
////            oMainFrame.showProgress("     Package " + spackage);
////            oclass.setField(spackage, new ArrayList(selectPreferred(packagesTable.get(spackage), prefClasses)));
////            singleformat = new Ole();
////            singleformat.setField("face", olecfg.getTab("Display").getOle("Format").getString("Font"));
////            singleformat.setField("fontsize", olecfg.getTab("Display").getOle("Format").getInt("Font size"));
////            if (olecfg.getTab("Display").getOle("Format").getString("Fill color", "Black & White").equals("Black & White")) {
////                singleformat.setField("fillcolor", "white"); //allcolours[ncolor++]);
////            } else {
////                singleformat.setField("fillcolor", allcolours[ncolor++]);
////            }
////            singleformat.setField("color", "black");
////            oformat.setField(spackage, singleformat);
////        }
////        singleformat = new Ole();
////        singleformat.setField("face", olecfg.getTab("Display").getOle("Format").getString("Font"));
////        singleformat.setField("fontsize", olecfg.getTab("Display").getOle("Format").getInt("Font size"));
////        singleformat.setField("fillcolor", "gray");
////        singleformat.setField("color", "black");
////        oformat.setField("extern", singleformat);
////
////        // Add external classes
////        orelation = new Ole();
////        orelation.setField("extends", new ArrayList());
////        oMainFrame.showProgress("Exploring subclasses...");
////        if (extendsTable.size() > 0) {
////            ArrayList<String> prefParent = selectPreferred(new ArrayList<String>(extendsTable.keySet()), prefClasses);
////            for (String ssuperclass : prefParent) {
////                oMainFrame.showProgress("     Class " + ssuperclass + " " + extendsTable.get(ssuperclass));
////                Ole oaux = new Ole().setField(ssuperclass, new ArrayList(selectPreferred(extendsTable.get(ssuperclass), prefClasses)));
////                orelation.addToField("extends", oaux);
////            }
////        }
////        orelation.setField("owns", new ArrayList());
////        if (datamenbersTable.size() > 0) {
////            oMainFrame.showProgress("Exploring data members...");
////            for (String ssuperclass : selectPreferred(new ArrayList<String>(datamenbersTable.keySet()), prefClasses)) {
//////                oMainFrame.showProgress("     Class " + ssuperclass + " " + datamenbersTable.get(ssuperclass));
////                Ole oaux = new Ole().setField(ssuperclass, new ArrayList(selectPreferred(datamenbersTable.get(ssuperclass), prefClasses)));
////                orelation.addToField("owns", oaux);
////            }
////        }
////        ooutput.setField("relation", orelation);
/////// Methods
////        if (olecfg.getTab("Classes").getBoolean("Include methods", false)) {
////            orelation = new Ole();
////            oMainFrame.showProgress("Exploring methods...");
////            for (String ssuperclass : publicmethodsTable.keySet()) {
////                oMainFrame.showProgress("     Class " + ssuperclass + " " + publicmethodsTable.get(ssuperclass));
////                if (methClasses.contains(ssuperclass)) {
////                    orelation.setField(ssuperclass, new ArrayList(publicmethodsTable.get(ssuperclass)));
////                }
////            }
////            ooutput.setField("publicmethodsTable", orelation);
////            if (!olecfg.getTab("Classes").getBoolean("Only public methods", true)) {
////                orelation = new Ole();
////                for (String ssuperclass : protectedmethodsTable.keySet()) {
////                    oMainFrame.showProgress("     Class " + ssuperclass + " " + protectedmethodsTable.get(ssuperclass));
////                    if (methClasses.contains(ssuperclass)) {
////                        orelation.setField(ssuperclass, new ArrayList(protectedmethodsTable.get(ssuperclass)));
////                    }
////                }
////                ooutput.setField("protectedmethodsTable", orelation);
////            }
////        }
////
////        ooutput.setField("class", oclass);
////        ooutput.setField("format", oformat);
////        int penwidth = olecfg.getTab("Display").getOle("Lines").getInt("Line width", 1);
//////        String colorline;
//////        if (olecfg.getTab("Display").getOle("Lines").getString("Line color", "Black & White").equals("Black & White")) {
//////            colorline= "black"; //allcolours[ncolor++]);
//////        } else {
//////            colorline = singleformat.getField("fillcolor");
//////        }
////        ooutput.getOle("format").setField("extends", "[arrowhead=onormal, penwidth=" + penwidth + ", color=black]");
////        ooutput.getOle("format").setField("owns", "[style=dotted,arrowhead=odiamond, penwidth=" + penwidth + ",color=blue]");
////        oMainFrame.showProgress("Saving model file..." + modelFile);
////        ooutput.saveAsFile(".", modelFile, true);
////        dotFile = modelFile.replace("models", "dot").replace("mod", "dot");
////        oMainFrame.showProgress("Saving dot file..." + dotFile);
////        ooutput.toDot(dotFile);
////        ooutput.exportTo(dotFile, myProject.getTab("Display").getOle("Output").getString("Layout", "dot"), "png");
//
////        System.out.println("Calling dot..." + dotFile);
////        pngFile = modelFile.replace("models/", "export/").replace("mod", "png");
////        String tmpFile = modelFile.replace("models", "png").replace("mod", "tmp");
////        File f = new File(pngFile);
////        if (f.exists()) {
////            f.delete();
////        }
////
//        for (String boxes : p.getClassesList()) {
//            ooutput.addObject(new LDotObject(boxes));
//        }
//        LDotRelation.setCanvas(ooutput);
//        for (String spclas : extendsTable.keySet()) {
//            for (String clas : extendsTable.get(spclas)) {
//                LDotRelation ldr = new LDotRelation();
//                ldr.setFrom(clas);
//                ldr.setTo(spclas);
//                ooutput.addRelation(ldr);
//            }
//        }
//
//        String command, dotfile = "./out.dot", pngfile = "./out.png";
//        ProcessBuilder pb;
//        Process ps = null;
//        ooutput.saveDot("./", dotfile);
//        try {
//            command = "/usr/bin/" + p.getLayout() + " -Tpng " + FileSystems.getDefault().getPath(dotfile).normalize().toAbsolutePath().toString()
//                    + "  -o " + FileSystems.getDefault().getPath(pngfile).normalize().toAbsolutePath().toString();
//            pb = new ProcessBuilder().command(command.split(" "));
//            pb.directory(FileSystems.getDefault().getPath("./").normalize().toAbsolutePath().toFile());
//            ps = pb.start();
//            ps.waitFor(5000, TimeUnit.MILLISECONDS);
//
//        } catch (Exception ex) {
//            System.err.println("Error generating output to " + pngfile + "\n" + ex.toString());
//        }
//        if (new File(pngfile).exists()) {
//            mapDiagram = new LColorBitmap();
//            try {
//                if (!mapDiagram.loadBitmap(pngfile).hasMap()) {
//                    mapDiagram = null;
//                    oMainFrame.Error("Error loading model " + pngfile);
////                    oMainFrame.Error("Error loading model " + pngFile);
//                }
//            } catch (IOException ex) {
//                mapDiagram = null;
//                oMainFrame.Error("Unexpected exception loading model " + pngfile + " " + ex.toString());
//            }
//        }
//
////        oMainFrame.showProgress("Done!", 1000);
//        if (!simplified) {
//            oMainFrame.Info("Model generated");
//        }
//        opDiagram.setPreferredSize(new Dimension(mapDiagram.getWidth(), mapDiagram.getHeight()));
//        osDiagram.setPreferredSize(opDiagram.getPreferredSize());
//        opDiagram.repaint();
////        osDiagram.repaint();
//    }
////
//
//    public static String getClassName(String filename) {
//        return filename.replace(".java", "");
//    }
////
//
//    public static String getPackageName(String filename) {
//        return allfilebasher.get(filename).grepv("//").grep("package ").sed("package *", "").sed(";", "").toString();
//    }
////
//
//    public static String getExtends(String filename) {
//        LBashTools aux = allfilebasher.get(filename).grepv("//").grep("class ").grep(" extends ");
//        if (aux.toString().length() > 0) {
//            return aux.grep("class").toString().replaceAll("public.*extends ", "").replaceAll(" .*\\{.*", "").replaceAll("\\{.*", "").trim();
////            return aux.sed("public class " + filename.replace("." + myConfig.getField("files"), "") + " extends ", "").toString().replaceAll(" *\\{.*", "");
//        } else {
//            return "";
//        }
//    }
////
//
//    public static ArrayList<String> getDataMembers(String filename) {
//        ArrayList<String> res = new ArrayList();
//        boolean bclass = false, bfirstmethod = false;
//        Pattern pat;
//
//        for (String line : allfilebasher.get(filename).getList()) {
//            if (bclass && !bfirstmethod) {
//                for (String toclass : allfilebasher.keySet()) {
//                    if (classusageTable.get(toclass) > 0 && !toclass.equals(filename)) {
//                        pat = Pattern.compile("[ \\[(<]" + toclass + "[\\])> ]");
//                        Matcher m = pat.matcher(line);
//                        if (m.find() && !res.contains(toclass)) {
//                            res.add(toclass);
////                            System.out.println("Found a new from " + filename + " to " + toclass);
//                        }
//                    }
//                }
//
//            }
//
//            if (line.matches("public class.*")) {
//                bclass = true;
//            }
//            if ((line.contains("public") || line.contains("private") || line.contains("protected")) && line.contains("(") && line.contains(")") && !line.contains("new")) {
//                bfirstmethod = true;
//                return res;
//            }
//        }
//        return res;
//    }
////
//
//    public static ArrayList<String> getMethods(String filename, String methodtype) {
//        ArrayList<String> res = new ArrayList();
//        boolean bclass = false, bfirstmethod = false;
//        Pattern pat;
//        String smethod;
//
//        for (String line : allfilebasher.get(filename).getList()) {
//            if (bfirstmethod) {
//                if (line.contains(methodtype)
//                        && line.contains("(") && line.contains(")") && !line.contains("new") && !line.startsWith("//")) {
//                    smethod = line;
//                    smethod = smethod.replace("{", "");
//                    smethod = smethod.replace(methodtype, "");
//                    smethod = smethod.trim();
//                    if (!res.contains(smethod)) {
//                        res.add(smethod);
//                    }
//
////                    System.out.println("Found method " + smethod);
//                }
//            }
//            if (line.matches("public class.*")) {
//                bclass = true;
//            }
//            if ((line.contains("public") || line.contains("private") || line.contains("protected")) && line.contains("(") && line.contains(")") && !line.contains("new") && !line.startsWith("//")) {
//                bfirstmethod = true;
//            }
//        }
//        return res;
//    }
////    public static ArrayList<String> getMethods(String filename, String methodtype) {
////        ArrayList<String> res = new ArrayList();
////        boolean bclass = false, bfirstmethod = false;
////        Pattern pat;
////        String smethod;
////
////        for (String line : allfilebasher.get(filename).getList()) {
////            if (bfirstmethod) {
////                if (line.contains(methodtype)
////                        && line.contains("(") && line.contains(")") && !line.contains("new") && !line.startsWith("//")) {
////                    smethod = line;
////                    smethod = smethod.replace("{", "");
////                    smethod = smethod.replace(methodtype, "");
////                    smethod = smethod.trim();
////                    if (!res.contains(smethod)) {
////                        res.add(smethod);
////                    }
////
//////                    System.out.println("Found method " + smethod);
////                }
////            }
////            if (line.matches("public class.*")) {
////                bclass = true;
////            }
////            if ((line.contains("public") || line.contains("private") || line.contains("protected")) && line.contains("(") && line.contains(")") && !line.contains("new") && !line.startsWith("//")) {
////                bfirstmethod = true;
////            }
////        }
////        return res;
////    }
////
////    public static void paintDiagram(Graphics2D myg) {
////        System.out.println("OleDrawPane Repaint " + rpaint++);
////        if (mapDiagram != null) {
////            opDiagram.clear();
////            myg.setRenderingHint(KEY_ANTIALIASING, VALUE_ANTIALIAS_ON);
////            showProjectSummary();
////            int nw = (int) (opDiagram.getPreferredSize().getWidth()),
////                    nh = (int) (opDiagram.getPreferredSize().getHeight());
////            myg.drawImage(mapDiagram.getColorImage(), 0, 0, nw, nh, null);
////        }
////    }
////
//
////
//
//    public static ArrayList<String> selectPreferred(ArrayList<String> Original, ArrayList<String> Preferred) {
//        ArrayList<String> res = new ArrayList();
//        for (String s : Original) {
//            if (Preferred.contains(s)) {
//                res.add(s);
//            }
//        }
//        return res;
//    }
}
