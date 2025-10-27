/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package classdiagram;

import Bitmap.LColorBitmap;
import Data.LFile;
import Dot.LDotCanvas;
import Dot.LDotObject;
import Dot.LDotRelation;
import Exceptions.LException;
import LReflection.LSerializer;
import LReflection.LTypeAbstraction;
import static LReflection.LTypeAbstraction.Belongs;
import static LReflection.LTypeAbstraction.addOne;
import Tools.LBashTools;
import java.io.File;
import java.io.IOException;
import java.io.PrintStream;
import java.nio.file.FileSystems;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @author Anatoli Grishenko <Anatoli.Grishenko@gmail.com>
 */
@LSerializer
public class Project {

    @LSerializer(Group = "Sources", Label = "Name of project:")
    String name = "nonamed";
    @LSerializer(Group = "Sources", Label = "Input folders:", isFolder = true)
    String[] inputFolders = new String[0];
    @LSerializer(Group = "Sources", Label = "Output folder:", isFolder = true)
    String outputFolder = "";
    @LSerializer(Group = "Sources", Label = "Source folders:")
    String sourceFolders = "src";
    @LSerializer(Group = "Sources", Label = "File extension:")
    String fileExtension = "java";
    @LSerializer(Group = "Sources", Label = "File list:")
    String[] filesList = new String[0];
    @LSerializer(Group = "Packages", Label = "Packages found:")
    String[] packagesList = new String[0];
    @LSerializer(Group = "Packages", Label = "Packages selected:")
    String[] packageSelection = new String[0];
    @LSerializer(Group = "Classes", Label = "Which classes:", SelectList = {"Referenced", "All"})
    String whichClasses = "Referenced";
    @LSerializer(Group = "Classes", Label = "Classes found:")
    String[] classesList = new String[0];
    String[] externClassesList = new String[0];
    @LSerializer(Group = "Classes", Label = "Classes selected:")
    String[] classesSelected = new String[0];
    @LSerializer(Group = "Classes", Label = "Include inheritance:")
    boolean includeExtends = true;
    @LSerializer(Group = "Classes", Label = "Include data members:")
    boolean includeData = false;
    @LSerializer(Group = "Classes", Label = "Include methods:")
    boolean includeMethods = false;
    @LSerializer(Group = "Classes", Label = "Only public methods:")
    boolean onlyPublicMethods = false;
    @LSerializer(Group = "Display", Label = "Font:", SelectList = {"Arial", "CourierNew"})
    String font = "Arial";
    @LSerializer(Group = "Display", Label = "Font size:")
    int fontSize = 9;
    @LSerializer(Group = "Display", Label = "Line width:")
    int lineWidth = 1;
    @LSerializer(Group = "Display", Label = "Line Color:", SelectList = {"Black & White", "Color"})
    String lineColor = "Black & White";
    @LSerializer(Group = "Display", Label = "Resolution (dpi):", SelectList = {"150", "300", "600"})
    String dpiResolution = "600";
    @LSerializer(Group = "Display", Label = "With (inches):")
    int widthInches = 11;
    @LSerializer(Group = "Display", Label = "Height (inches):")
    int heightInches = 16;
    @LSerializer(Group = "Display", Label = "Filled:")
    boolean fill = false;
    @LSerializer(Group = "Display", Label = "Layout manager:", SelectList = {"dot", "neato"})
    String layout = "dot";

//    static ArrayList<String> filenameList, packageList, classList;
    HashMap<String, String> filecontentTable;
    HashMap<String, Integer> classusageTable;
    HashMap<String, ArrayList<String>> packagesTable, extendsTable, datamenbersTable, publicmethodsTable, protectedmethodsTable;
    HashMap<String, LBashTools> parsersTable;
    protected PrintStream out;
    protected LDotCanvas outDot;
    protected LColorBitmap outBitmap;

    public Project() {
        out = System.out;
        clear();
    }

    public void clear() {
//        filenameList = new ArrayList();
//        packageList = new ArrayList();
//        classList = new ArrayList();
        setFilesList(new String[0]);
        setPackagesList(new String[0]);
        setClassesList(new String[0]);
        setExternClassesList(new String[0]);
        filecontentTable = new HashMap();
        classusageTable = new HashMap();
        packagesTable = new HashMap();
        extendsTable = new HashMap();
        datamenbersTable = new HashMap();
        publicmethodsTable = new HashMap();
        protectedmethodsTable = new HashMap();
        parsersTable = new HashMap();
    }

    public String[] getExternClassesList() {
        return externClassesList;
    }

    public void setExternClassesList(String[] externClassesList) {
        this.externClassesList = externClassesList;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String[] getInputFolders() {
        return inputFolders;
    }

    public void setInputFolders(String[] inputFolders) {
        this.inputFolders = inputFolders;
    }

    public String getOutputFolder() {
        return outputFolder;
    }

    public void setOutputFolder(String outputFolder) {
        this.outputFolder = outputFolder;
    }

    public String getSourceFolders() {
        return sourceFolders;
    }

    public void setSourceFolders(String sourceFolders) {
        this.sourceFolders = sourceFolders;
    }

    public String getFileExtension() {
        return fileExtension;
    }

    public void setFileExtension(String fileExtension) {
        this.fileExtension = fileExtension;
    }

    public String getWhichClasses() {
        return whichClasses;
    }

    public void setWhichClasses(String whichClasses) {
        this.whichClasses = whichClasses;
    }

    public String[] getFilesList() {
        return filesList;
    }

    public void setFilesList(String[] fileList) {
        this.filesList = fileList;
    }

    public void addFileList(String file) {
        setFilesList((String[]) addOne(filesList, file));
//        filenameList.add(file);
    }

    public String[] getPackagesList() {
        return packagesList;
    }

    public void setPackagesList(String[] packagesList) {
        this.packagesList = packagesList;
    }

    public String[] getPackageSelection() {
        return packageSelection;
    }

    public void setPackageSelection(String[] packageSelection) {
        this.packageSelection = packageSelection;
    }

    public void addPackageSelection(String pakage) {
        setPackageSelection((String[]) addOne(getPackageSelection(), pakage));
//        filenameList.add(file);
    }

    public String[] getClassesList() {
        return classesList;
    }

    public void setClassesList(String[] classesList) {
        this.classesList = classesList;
    }

    public String[] getClassesSelected() {
        return classesSelected;
    }

    public void setClassesSelected(String[] classesSelected) {
        this.classesSelected = classesSelected;
    }

    public boolean isIncludeMethods() {
        return includeMethods;
    }

    public void setIncludeMethods(boolean includeMethods) {
        this.includeMethods = includeMethods;
    }

    public boolean isOnlyPublicMethods() {
        return onlyPublicMethods;
    }

    public void setOnlyPublicMethods(boolean onlyPublicMethods) {
        this.onlyPublicMethods = onlyPublicMethods;
    }

    public String getFont() {
        return font;
    }

    public void setFont(String font) {
        this.font = font;
    }

    public int getFontSize() {
        return fontSize;
    }

    public void setFontSize(int fontSize) {
        this.fontSize = fontSize;
    }

    public int getLineWidth() {
        return lineWidth;
    }

    public void setLineWidth(int lineWidth) {
        this.lineWidth = lineWidth;
    }

    public String getLineColor() {
        return lineColor;
    }

    public void setLineColor(String lineColor) {
        this.lineColor = lineColor;
    }

    public String getDpiResolution() {
        return dpiResolution;
    }

    public void setDpiResolution(String dpiResolution) {
        this.dpiResolution = dpiResolution;
    }

    public int getWidthInches() {
        return widthInches;
    }

    public void setWidthInches(int widthInches) {
        this.widthInches = widthInches;
    }

    public int getHeightInches() {
        return heightInches;
    }

    public void setHeightInches(int heightInches) {
        this.heightInches = heightInches;
    }

    public boolean isFill() {
        return fill;
    }

    public void setFill(boolean fill) {
        this.fill = fill;
    }

    public String getLayout() {
        return layout;
    }

    public void setLayout(String layout) {
        this.layout = layout;
    }

    public HashMap<String, String> getFilecontenTable() {
        return filecontentTable;
    }

    public void setFilecontenTable(HashMap<String, String> filecontenTable) {
        filecontentTable = filecontenTable;
    }

    public HashMap<String, Integer> getClassusageTable() {
        return classusageTable;
    }

    public void setClassusageTable(HashMap<String, Integer> classusageTable) {
        classusageTable = classusageTable;
    }

    public HashMap<String, ArrayList<String>> getPackagesTable() {
        return packagesTable;
    }

    public void setPackagesTable(HashMap<String, ArrayList<String>> packagesTable) {
        packagesTable = packagesTable;
    }

    public HashMap<String, ArrayList<String>> getExtendsTable() {
        return extendsTable;
    }

    public void setExtendsTable(HashMap<String, ArrayList<String>> extendsTable) {
        extendsTable = extendsTable;
    }

    public HashMap<String, ArrayList<String>> getDatamenbersTable() {
        return datamenbersTable;
    }

    public void setDatamenbersTable(HashMap<String, ArrayList<String>> datamenbersTable) {
        datamenbersTable = datamenbersTable;
    }

    public HashMap<String, ArrayList<String>> getPublicmethodsTable() {
        return publicmethodsTable;
    }

    public void setPublicmethodsTable(HashMap<String, ArrayList<String>> publicmethodsTable) {
        publicmethodsTable = publicmethodsTable;
    }

    public HashMap<String, ArrayList<String>> getProtectedmethodsTable() {
        return protectedmethodsTable;
    }

    public void setProtectedmethodsTable(HashMap<String, ArrayList<String>> protectedmethodsTable) {
        protectedmethodsTable = protectedmethodsTable;
    }

    public HashMap<String, LBashTools> getParsersTable() {
        return parsersTable;
    }

    public void setParsersTable(HashMap<String, LBashTools> parsersTable) {
        parsersTable = parsersTable;
    }

    protected void retrieveFolders(String padding, String folder) throws IOException {
        File folderinputs[], dir, item;
        LFile ofile;
        dir = new File(folder);
        folderinputs = dir.listFiles();
        out.println(padding + "Exploring folder " + folder);
        for (int i = 0; i < folderinputs.length; i++) {
            item = folderinputs[i];
            if (item.isDirectory() && !item.getName().startsWith(".")) {
                String fullpath = folder + "/" + item.getName();
                if (fullpath.contains(getSourceFolders())) {
                    retrieveFolders(padding + "   ", folder + "/" + item.getName());
                }
            } else if (item.isFile()) {
                if (item.getName().endsWith(getFileExtension())) {
                    String id = folder + "/" + item.getName();
//                    filenameList.add(id);
                    out.println(padding + "   Found file " + id);
                    addFileList(id);
                }
            }
//            oMainFrame.Confirm("Next");
        }
    }
//

    public void sendOutTo(PrintStream ps) {
        out = ps;
    }

    public void retrieveFiles() {
        setFilesList(new String[0]);
        for (String folder : getInputFolders()) {
            try {
                retrieveFolders("   ", folder);
            } catch (IOException ex) {
                LException.LExceptionReport(ex);
            }
        }

//        findUsage(p);
    }

    protected void loadFiles() throws IOException {
        LFile lfile;
        int i = 0;
        out.println("\n\nFound " + getFilesList().length + " files\n");
        for (String filename : getFilesList()) {
            lfile = new LFile();
            lfile.setFilename(filename);
            lfile.loadFileASCII();
            filecontentTable.put(filename, lfile.getFilecontent());
            parsersTable.put(filename, new LBashTools(filename));
            out.println((i++) + ")  Processing file " + getClassName(filename));
//            oMainFrame.Confirm("Next");
        }
    }

    public void findAllClasses() {
        String sclass, spackage, ssuperclass;
        setClassesList(new String[0]);

        out.println("Found " + packagesList.length + " packages");
        out.println("Selected " + packageSelection.length + " packages\n\n");
        for (String sfile : getFilesList()) {
            sclass = getClassName(sfile);
            spackage = getPackageName(sfile);
            if (!Belongs(getPackageSelection(), spackage)) {
                continue;
            }
            if (!Belongs(getClassesList(), sclass)) {
                setClassesList((String[]) addOne(getClassesList(), sclass));
                out.println("Found class " + sclass);
            }
        }
        for (String sfile : getFilesList()) {
            sclass = getClassName(sfile);
            spackage = getPackageName(sfile);
            ssuperclass = getExtends(sfile);
            if (!Belongs(getPackageSelection(), spackage)) {
                continue;
            }
            if (ssuperclass.length() > 0) {
                if (!extendsTable.keySet().contains(ssuperclass)) {
                    extendsTable.put(ssuperclass, new ArrayList<String>());
                }
                extendsTable.get(ssuperclass).add(sclass);
                if (!Belongs(getClassesList(), ssuperclass) && !Belongs(getExternClassesList(), ssuperclass)) {
                    packagesTable.get("extern").add(ssuperclass);
                    setExternClassesList((String[]) addOne(getExternClassesList(), ssuperclass));
                }
                out.println("Found class " + sclass + " extends " + ssuperclass);
            } else {
                out.println("Found class " + sclass);
            }
        }
    }

    public void findAllPackages() {
        String sclass, spackage, ssuperclass;
        out.println("\n\nLoaded " + getFilesList().length + " files\n");
        setPackagesList(new String[0]);
        packagesTable.clear();
        packagesTable.put("extern", new ArrayList<String>());
        for (String sfile : getFilesList()) {
            sclass = getClassName(sfile);
            spackage = getPackageName(sfile);
            if (spackage.length() < 1) {
                continue;
            }
            if (!Belongs(getPackagesList(), spackage)) {
                out.println(" Found package " + spackage);
                setPackagesList((String[]) addOne(packagesList, spackage));
            }
        }
        Arrays.sort(packagesList);
        if (getPackageSelection().length < 1) {
            setPackageSelection(new String[0]);
            for (String spack : getPackagesList()) {
                addPackageSelection(spack);
            }
        }
        for (String sfile : getFilesList()) {
            sclass = getClassName(sfile);
            spackage = getPackageName(sfile);
            if (spackage.length() < 1) {
                continue;
            }
            if (Belongs(getPackageSelection(), spackage)) {
                if (!packagesTable.keySet().contains(spackage)) {
                    packagesTable.put(spackage, new ArrayList<String>());
                }
                packagesTable.get(spackage).add(sclass);
                out.println("Package " + spackage + " " + packagesTable.get(spackage).size() + " files");
            }
        }
    }

    public String[] getDataMembers(String filename) {
        String[] res = new String[0];
        boolean bclass = false, bfirstmethod = false;
        Pattern pat;
        if (getParsersTable().get(filename) == null) {
            return res;
        }
        for (String line : getParsersTable().get(filename).getList()) {
            if (bclass && !bfirstmethod) {
                for (String tofile : getParsersTable().keySet()) {
                    String toclass = getClassName(tofile);
                    if (classusageTable.get(toclass) > 0 && !toclass.equals(getClassName(filename))) {
                        pat = Pattern.compile("[ \\[(<]" + toclass + "[\\])> ]");
                        Matcher m = pat.matcher(line);
                        if (m.find() && !Belongs(res, toclass)) {
                            res = (String[]) addOne(res, toclass);
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

    public void findUsage() {
        String sclass, spackage, ssuperclass;
        String[] datamembers = new String[0];
        for (String fromclass : getFilesList()) {
            getClassusageTable().put(getClassName(fromclass), 1);
        }
        out.println("Analyzing java dependencies");
        out.println("Analyzing classes and superclasses");
        // Count extends
        for (String sfile : getFilesList()) {
            sclass = getClassName(sfile);
            spackage = getPackageName(sfile);
            ssuperclass = getExtends(sfile);
            if (!Belongs(getPackageSelection(), spackage)) {
                continue;
            }
            if (ssuperclass.length() > 0) {
                if (classusageTable.get(ssuperclass) == null) {
                    classusageTable.put(ssuperclass, 1);
                }
                out.println("   " + sclass + " extends " + ssuperclass);
                classusageTable.put(sclass, classusageTable.get(sclass) + 1);
                classusageTable.put(ssuperclass, classusageTable.get(ssuperclass) + 1);
            }
        }
        // Count owns
        out.println("Analyzing data members");
        for (String sfile : getFilesList()) {
            sclass = getClassName(sfile);
            spackage = getPackageName(sfile);
            ssuperclass = getExtends(sfile);
            if (!Belongs(getPackageSelection(), spackage)) {
                continue;
            }
            datamembers = getDataMembers(sfile);
            getDatamenbersTable().put(sclass, new ArrayList(LTypeAbstraction.toArrayList(datamembers)));
            for (String tonew : datamembers) {
                classusageTable.put(tonew, classusageTable.get(tonew) + 1);
                classusageTable.put(sclass, classusageTable.get(sclass) + 1);
                out.println("       " + sclass + "." + tonew);
            }
        }
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
        out.println("End of analysis");
//        oMainFrame.showProgress("End of analysis");

    }

//
    protected String getClassName(String filename) {
        LBashTools lbt = new LBashTools(filename, "");
        return lbt.sed("^.*/", "").toString().replace(".java", "");
    }
////
//

    public String findPackage(String myclass) {
        for (String sf : getFilesList()) {
            String classname = getClassName(sf);
            String pname = getPackageName(sf);
            if (classname.equals(myclass)) {
                if (getPackagesTable().get(pname).contains(classname)) {
                    return pname;
                }
            }
        }
        return "";
    }

    public String getPackageName(String filename) {
        return parsersTable.get(filename).grepv("//").grep("package ").sed("package *", "").sed(";", "").toString();
    }
////
//

    public String getExtends(String filename) {
        LBashTools aux = parsersTable.get(filename).grepv("//").grep("class ").grep(" extends ");
        if (aux.toString().length() > 0) {
            return aux.grep("class").toString().replaceAll("public.*extends ", "").replaceAll(" .*\\{.*", "").replaceAll("\\{.*", "").trim();
        } else {
            return "";
        }
    }

    public boolean saveDot() {
//        String command, dotfile = "./" + getName() + ".dot", pngfile = "./" + getName() + ".png", outfile = "./" + getName() + ".txt";
        ProcessBuilder pb;
        Process ps = null;
        boolean result = false;

        out.println("Saving dot file ...");
        outDot = new LDotCanvas(getName());
        outDot.setDpi(getDpiResolution());
        outDot.setWidth(getWidthInches());
        outDot.setHeight(getHeightInches());
        outDot.setRatio("fill");
        LDotObject.setDefaultShape(LDotObject.DotShape.plain);
        LDotObject.setDefaultFont(getFont());
        LDotObject.setDefaultFontsize(getFontSize());
//        LDotRelation.setCanvas(outDot);

        // Draw classes
        LDotObject ldo;
        for (String sc : getClassesList()) {
            ldo = new LDotObject(sc);
            String categ = findPackage(sc);
            if (categ.length() > 0) {
                ldo.setCategory(categ);
            }
            ldo.setFilled(true);
            ldo.setFillcolor(LDotObject.DotColors.white);
//             ldo.setShape(LDotObject.DotShape.rect);
            outDot.addObject(ldo);
        }
        for (String sc : getExternClassesList()) {
            ldo = new LDotObject(sc);
            ldo.setFilled(true);
            ldo.setFillcolor(LDotObject.DotColors.gray);
//            ldo.setShape(LDotObject.DotShape.rect);
            outDot.addObject(ldo);
        }

        // Draw relations        
        // extends
        if (isIncludeExtends()) {
            for (String spclass : getExtendsTable().keySet()) {
                for (String sbclass : getExtendsTable().get(spclass)) {
                    if (Belongs(outDot.getNames(), sbclass) && Belongs(outDot.getNames(), spclass)) {
                        outDot.addRelation(new LDotRelation(sbclass, spclass, LDotRelation.LDRelation.EXTENDS));
                    }
                }
            }
        }

        // owns
        if (isIncludeData()) {
            for (String spclass : getDatamenbersTable().keySet()) {
                for (String sbclass : getDatamenbersTable().get(spclass)) {
                    if (Belongs(outDot.getNames(), sbclass) && Belongs(outDot.getNames(), spclass)) {
                        outDot.addRelation(new LDotRelation(sbclass, spclass, LDotRelation.LDRelation.OWNS));
                    }
                }
            }
        }
        outDot.save(getOutputFolder(), getName());
        if (getLayout().equals("neato")) {
            result = outDot.Neato(getOutputFolder(), getName(), LDotCanvas.ExportDOT.jpg);
        } else {
            result = outDot.Dot(getOutputFolder(), getName(), LDotCanvas.ExportDOT.jpg);
        }
        String outputfilename = getOutputFolder() + "/" + getName() + ".jpg";
        if (result) {
            if (new File(outputfilename).exists()) {
                out.println("Dot file exported");
                outBitmap = new LColorBitmap();
                try {
                    outBitmap.loadBitmap(outputfilename);
                } catch (Exception ex) {
//                    LException.LExceptionReport(ex);
                    result = false;
                }
            } else {
                out.println("Failed to export dot file");
                result = false;
            }

        }
        return result;
    }
//    }
//        outBitmap = null;
//        try {
//            command = "/usr/bin/" + getLayout() + " -Tpng " + FileSystems.getDefault().getPath(dotfile).normalize().toAbsolutePath().toString()
//                    + "  -o " + FileSystems.getDefault().getPath(pngfile).normalize().toAbsolutePath().toString() + " >" + outfile;
//            pb = new ProcessBuilder().command(command.split(" "));
//            pb.directory(FileSystems.getDefault().getPath("./").normalize().toAbsolutePath().toFile());
//            out.println("Calling dot ... ");
//            ps = pb.start();
//            ps.waitFor(5000, TimeUnit.MILLISECONDS);
//        } catch (Exception ex) {
//            out.println("Error generating output to " + pngfile + "\n" + ex.toString());
//        }
//        if (new File(pngfile).exists()) {
//            out.println("Dot file exported");
//            outBitmap = new LColorBitmap();
//            try {
//                outBitmap.loadBitmap(pngfile);
//                return true;
//            } catch (Exception ex) {
//                LException.LExceptionReport(ex);
//                return false;
//            }
//        } else {
//            out.println("Failed to export dot file");
//            return false;
//        }

    public LColorBitmap getBitmap() {
        return outBitmap;
    }

    public boolean isIncludeData() {
        return includeData;
    }

    public void setIncludeData(boolean includeData) {
        this.includeData = includeData;
    }

    public boolean isIncludeExtends() {
        return includeExtends;
    }

    public void setIncludeExtends(boolean includeExtends) {
        this.includeExtends = includeExtends;
    }

}
