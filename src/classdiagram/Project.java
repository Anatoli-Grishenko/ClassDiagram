/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package classdiagram;

import LReflection.LSerializer;
import LReflection.LTypeAbstraction;

/**
 *
 * @author Anatoli Grishenko <Anatoli.Grishenko@gmail.com>
 */
@LSerializer
public class Project {
    @LSerializer(Group="Sources",Label="Input folders:",isFolder = true)
    String []inputFolders=new String[0];
    @LSerializer(Group="Sources",Label="Output folder:", isFolder = true)
    String outputFolder="";
    @LSerializer(Group="Sources",Label="Source folders:")
    String sourceFolders="src";
    @LSerializer(Group="Sources",Label="File extension:")
    String fileExtension="java";
    @LSerializer(Group="Sources",Label="Which clases:",SelectList ={"Referenced","All"})
    String whichClasses="Referenced";
    @LSerializer(Group="Sources",Label="File list:")
    String [] fileList = new String[0];
    @LSerializer(Group="Packages",Label="Packages found:")
    String []packagesList=new String[0];
    @LSerializer(Group="Packages",Label="Packages selected:")
    String []packageSelection=new String[0];
    @LSerializer(Group="Classes",Label="Classes found:")
    String []classesList=new String[0];
    @LSerializer(Group="Classes",Label="Classes selected:")
    String []classesSelected=new String[0];
    @LSerializer(Group="Classes",Label="Include methods:")
    boolean includeMethods=false;
    @LSerializer(Group="Classes",Label="Only public methods:")
    boolean onlyPublicMethods=false;
    @LSerializer(Group="Display",Label="Font:", SelectList = {"Arial", "Coourier New"})
    String font="Courier New";
    @LSerializer(Group="Display",Label="Font size:")
    int fontSize=9;
    @LSerializer(Group="Display",Label="Line width:")
    int lineWidth=1;
    @LSerializer(Group="Display",Label="Line Color:")
    String lineColor="Black & White";
    @LSerializer(Group="Display",Label="Resolution (dpi):")
    String dpiResolution="600";
    @LSerializer(Group="Display",Label="With (inches):")
    int widthInches=11;
    @LSerializer(Group="Display",Label="Height (inches):")
    int heightInches=16;
    @LSerializer(Group="Display",Label="Filled:")
    boolean fill=false;
    @LSerializer(Group="Display",Label="Layout manager:",SelectList = {"dot","neato"})
    String layout="dot";

    public Project() {
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

    public String[] getFileList() {
        return fileList;
    }

    public void setFileList(String[] fileList) {
        this.fileList = fileList;
    }
    public void addFileList(String file) {
        this.fileList = (String[])LTypeAbstraction.addOne(fileList, file);
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
    
    
    
}
