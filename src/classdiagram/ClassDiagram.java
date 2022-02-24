/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classdiagram;

import basher.Basher;
import com.eclipsesource.json.WriterConfig;
import data.Ole;
import data.OleConfig;
import data.OleDot;
import data.OleFile;
import java.awt.event.ActionEvent;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.swing.JPanel;
import swing.LARVAFrame;
import swing.OleDialog;
import swing.SwingTools;

/**
 *
 * @author Anatoli Grishenko <Anatoli.Grishenko@gmail.com>
 */
public class ClassDiagram {

    static ArrayList<String> allfilenames, allpackages, allclasses;
    static HashMap<String, String> allfilecontent;
    static HashMap<String, Integer> classusage;
    static HashMap<String, ArrayList<String>> allfullpackages, allextends, allowns, allmethods;
    static HashMap<String, Basher> allfilebasher;
    static OleConfig myConfig;
//    static String allcolours[] = new String[]{"aliceblue", "antiquewhite", "aqua", "aquamarine", "azure", "beige", "bisque", "blanchedalmond", "blue", "blueviolet", "brown", "burlywood", "cadetblue", "chartreuse", "chocolate", "coral", "cornflowerblue", "cornsilk", "crimson", "cyan", "darkblue", "darkcyan", "darkgoldenrod", "darkgray", "darkgreen", "darkgrey", "darkkhaki", "darkmagenta", "darkolivegreen", "darkorange", "darkorchid", "darkred", "darksalmon", "darkseagreen", "darkslateblue", "darkslategray", "darkslategrey", "darkturquoise", "darkviolet", "deeppink", "deepskyblue", "dimgray", "dimgrey", "dodgerblue", "firebrick", "floralwhite", "forestgreen", "fuchsia", "gainsboro", "ghostwhite", "gold", "goldenrod", "gray"};
    static String allcolours[] = new String[]{"Chartreuse", "MediumSpringGreen", "Turquoise", "CadetBlue", "MediumAquaMarine", "Thistle", "LightSteelBlue", "DarkViolet", "BlueViolet", "DarkOliveGreen", "Aqua", "OliveDrab", "Cyan", "LightBlue", "Indigo", "DarkSeaGreen", "Crimson", "Orchid", "DarkGreen", "Salmon", "RebeccaPurple", "MediumSlateBlue", "DodgerBlue", "PaleTurquoise", "Fuchsia", "Violet", "DarkTurquoise", "Blue", "SpringGreen", "DarkSlateBlue", "SkyBlue", "MediumBlue", "MidnightBlue", "IndianRed", "ForestGreen", "Lavender", "SlateBlue", "DarkMagenta", "Aquamarine", "DarkOrchid", "Lime", "Teal", "LightSeaGreen", "PowderBlue", "RoyalBlue", "Green", "Plum", "LimeGreen", "MediumOrchid", "FireBrick", "DarkRed", "MediumSeaGreen", "LightSkyBlue", "LightSalmon", "MediumTurquoise", "LightCoral", "DarkSalmon", "GreenYellow", "DeepSkyBlue", "MediumPurple", "LawnGreen", "CornflowerBlue", "PaleGreen", "SteelBlue", "Magenta", "LightCyan", "Navy", "Purple", "Red", "YellowGreen", "DarkCyan", "LightGreen", "SeaGreen", "DarkBlue"};
//    static String allcolours[] = new String[]{"Aqua","Aquamarine","Blue","BlueViolet","CadetBlue","Chartreuse","CornflowerBlue","Crimson","Cyan","DarkBlue","DarkCyan","DarkGreen","DarkMagenta","DarkOliveGreen","DarkOrchid","DarkRed","DarkSalmon","DarkSeaGreen","DarkSlateBlue","DarkTurquoise","DarkViolet","DeepSkyBlue","DodgerBlue","FireBrick","ForestGreen","Fuchsia","Green","GreenYellow","IndianRed","Indigo","Lavender","LawnGreen","LightBlue","LightCoral","LightCyan","LightGreen","LightSalmon","LightSeaGreen","LightSkyBlue","LightSteelBlue","Lime","LimeGreen","Magenta","MediumAquaMarine","MediumBlue","MediumOrchid","MediumPurple","MediumSeaGreen","MediumSlateBlue","MediumSpringGreen","MediumTurquoise","MidnightBlue","Navy","OliveDrab","Orchid","PaleGreen","PaleTurquoise","Plum","PowderBlue","Purple","RebeccaPurple","Red","RoyalBlue","Salmon","SeaGreen","SkyBlue","SlateBlue","SpringGreen","SteelBlue","Teal","Thistle","Turquoise","Violet","YellowGreen"};

    static LARVAFrame FMain;
    static OleDialog ODMain;
    static JPanel JPButtons;
    
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        myConfig = new OleConfig();
        myConfig.loadFile("config/config.json");
//        InitGUI();
        loadAllFiles();
        System.out.println("Found initial " + allfilebasher.keySet().size() + " classes");
        findAllComponents();
        System.out.println("Filtered " + allfilebasher.keySet().size() + " classes");
        findAllClasses();
        System.out.println("Found " + allclasses.size() + " classes in " + allpackages.size() + " packages");
        dumpJson();

    }

    static void InitGUI() {
        SwingTools.initLookAndFeel();
        FMain = new LARVAFrame("ClassDiagram",e->Listener(e));
        
    }
    
    static void Listener(ActionEvent e) {
        
    }

    public static void findAllComponents() {
        ArrayList<String> datamembers;
        ArrayList<String> sorted;
        String sclassname, spackage, ssuperclass;

        classusage = new HashMap();
        // Reset usage counter
        for (String fromclass : allfilebasher.keySet()) {
            classusage.put(fromclass, 0);
        }
        // Count extends
        for (String sclass : allfilebasher.keySet()) {
            sclassname = getClassName(sclass);
            ssuperclass = getExtends(sclass);
            if (ssuperclass.length() > 0 && classusage.get(ssuperclass) != null) {
                classusage.put(sclassname, classusage.get(sclassname) + 1);
                classusage.put(ssuperclass, classusage.get(ssuperclass) + 1);
            }
        }

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
        for (String fromclass : sorted) {
            datamembers = getMethods(fromclass); //frombasher.grepv("//");
            System.out.println("Exploring class " + fromclass + " Found Methods > " + datamembers);
            allmethods.put(fromclass, datamembers);
        }
        // Remove unused
        for (String sclass : sorted) {
            System.out.println("Class usage " + sclass + " : " + classusage.get(sclass));
            if (classusage.get(sclass) == null || classusage.get(sclass) < 1) {
                allfilebasher.remove(sclass);
                System.out.println("Removing unused class " + sclass);
            }
        }

    }

    public static void findAllClasses() {
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
//            System.out.print("Found class " + sclass + " in package " + spackage);
            ssuperclass = getExtends(sclass);
            if (ssuperclass.length() > 0) {
//                System.out.print(" extends " + getExtends(filename));
                if (!allextends.keySet().contains(ssuperclass)) {
                    allextends.put(ssuperclass, new ArrayList<String>());
                }
                allextends.get(ssuperclass).add(sclasscontent);
            }
//            System.out.println();
            if (!allfullpackages.keySet().contains(spackage)) {
                allfullpackages.put(spackage, new ArrayList<String>());
            }
            allfullpackages.get(spackage).add(sclasscontent);
        }
    }

    public static void dumpJson() {
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
            oclass.setField(spackage, new ArrayList(allfullpackages.get(spackage)));
            singleformat = new Ole();
            singleformat.setField("face", "Arial");
            singleformat.setField("fontsize", 20);
            singleformat.setField("fillcolor", allcolours[ncolor++]);
            singleformat.setField("color", "black");
            oformat.setField(spackage, singleformat);
        }
        orelation = new Ole();
        orelation.setField("extends", new ArrayList());
        if (allextends.size() > 0) {
            for (String ssuperclass : allextends.keySet()) {
                Ole oaux = new Ole().setField(ssuperclass, new ArrayList(allextends.get(ssuperclass)));
                orelation.addToField("extends", oaux);
            }
        }
//        ooutput.setField("relation", orelation);

        orelation.setField("owns", new ArrayList());
        if (allowns.size() > 0) {
            for (String ssuperclass : allowns.keySet()) {
                Ole oaux = new Ole().setField(ssuperclass, new ArrayList(allowns.get(ssuperclass)));
                orelation.addToField("owns", oaux);
            }
        }
        ooutput.setField("relation", orelation);
/// Methods
        if (allmethods.size() > 0) {
            orelation = new Ole();

            for (String ssuperclass : allmethods.keySet()) {
                orelation.setField(ssuperclass, new ArrayList(allmethods.get(ssuperclass)));
            }
            ooutput.setField("methods", orelation);
        }

        ooutput.setField("class", oclass);
        ooutput.setField("format", oformat);
        ooutput.getOle("format").setField("extends", "[arrowhead=onormal,color=black]");
        ooutput.getOle("format").setField("owns", "[style=dotted,arrowhead=odiamond,color=blue]");
        ooutput.saveAsFile("./dot/", "classdiagram.json", true);
        ooutput.toDot(myConfig.getField("output") + "/classdiagram.gv");
        try {
            Runtime.getRuntime().exec("/usr/bin/dot -Tpdf " + myConfig.getField("output") + "/classdiagram.gv " + "  > " + myConfig.getField("output") + "/classdiagram.gv ");
        } catch (IOException ex) {
        }
    }

    public static void loadAllFiles() {
        ArrayList<String> folders = new ArrayList(myConfig.getArray("input"));
        allclasses = new ArrayList();
        allpackages = new ArrayList();
        allfilenames = new ArrayList();
        allfilecontent = new HashMap();
        allfullpackages = new HashMap();
        allextends = new HashMap();
        allowns = new HashMap();
        allmethods = new HashMap();
        allfilebasher = new HashMap();
        classusage = new HashMap();
        for (String folder : folders) {
            try {
                scanFolder(folder);
            } catch (IOException ex) {
            }
        }
        System.out.println("Found " + allfilenames.size() + " files");
    }

    public static void scanFolder(String folder) throws IOException {
        ArrayList<String> folderlist, filelist;
        File folderinputs[], dir, item;
        OleFile ofile;
        System.out.println("Scanning folder " + folder + "   ...");
        dir = new File(folder);
        folderinputs = dir.listFiles();
        ofile = new OleFile();
        for (int i = 0; i < folderinputs.length; i++) {
            item = folderinputs[i];
            if (item.isDirectory() && !item.getName().startsWith(".")) {
                String fullpath = folder + "/" + item.getName();
                if (fullpath.contains(myConfig.getField("includefolders"))) {
                    scanFolder(folder + "/" + item.getName());
                }
            } else if (item.isFile()) {
                if (item.getName().endsWith(myConfig.getField("files"))) {
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
