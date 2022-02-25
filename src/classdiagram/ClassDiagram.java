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
import java.awt.event.ItemEvent;
import java.awt.event.KeyEvent;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.swing.JFrame;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JPanel;
import swing.LARVAFrame;
import swing.OleApplication;
import swing.OleDialog;
import swing.OleFrame;
import swing.OleMenuBar;
import swing.SwingTools;

/**
 *
 * @author Anatoli Grishenko <Anatoli.Grishenko@gmail.com>
 */
public class ClassDiagram {

    static OleConfig myConfig, myProject;
    static OleApplication oMainFrame;
    static JPanel pSideTools, pStatus, pMain;
    static String projectFile;

    static String allcolours[] = new String[]{"Chartreuse", "MediumSpringGreen", "Turquoise", "CadetBlue", "MediumAquaMarine", "Thistle", "LightSteelBlue", "DarkViolet", "BlueViolet", "DarkOliveGreen", "Aqua", "OliveDrab", "Cyan", "LightBlue", "Indigo", "DarkSeaGreen", "Crimson", "Orchid", "DarkGreen", "Salmon", "RebeccaPurple", "MediumSlateBlue", "DodgerBlue", "PaleTurquoise", "Fuchsia", "Violet", "DarkTurquoise", "Blue", "SpringGreen", "DarkSlateBlue", "SkyBlue", "MediumBlue", "MidnightBlue", "IndianRed", "ForestGreen", "Lavender", "SlateBlue", "DarkMagenta", "Aquamarine", "DarkOrchid", "Lime", "Teal", "LightSeaGreen", "PowderBlue", "RoyalBlue", "Green", "Plum", "LimeGreen", "MediumOrchid", "FireBrick", "DarkRed", "MediumSeaGreen", "LightSkyBlue", "LightSalmon", "MediumTurquoise", "LightCoral", "DarkSalmon", "GreenYellow", "DeepSkyBlue", "MediumPurple", "LawnGreen", "CornflowerBlue", "PaleGreen", "SteelBlue", "Magenta", "LightCyan", "Navy", "Purple", "Red", "YellowGreen", "DarkCyan", "LightGreen", "SeaGreen", "DarkBlue"};

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        myConfig = new OleConfig();
        myConfig.loadFile("config/config.json");
        if (myConfig.isEmpty()) {
            SwingTools.Warning("Configuration file not found");
        }
        initGUI(myConfig);
//        if (myConfig.loadFile("config/LARVA.json").isEmpty()) {
//            SwingTools.Error("Config file is corrupt");
//            System.exit(1);
//        }
//        OleDialog projectSettings = new OleDialog(null, "Project settings");
//        if (projectSettings.run(myConfig)) {
//            System.out.println("Aceptado. Guardando datos");
//            myConfig = projectSettings.getResult();
//            myConfig.saveAsFile("./", "./config/LARVA.json", true);
//        } else {
//            System.out.println("Cancelado. No se guardarán los datos");
//        }

//        loadAllFiles();
//        System.out.println("Found initial " + allfilebasher.keySet().size() + " classes");
//        findAllComponents();
//        System.out.println("Filtered " + allfilebasher.keySet().size() + " classes");
//        findAllClasses();
//        System.out.println("Found " + allclasses.size() + " classes in " + allpackages.size() + " packages");
//        dumpJson();
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

    public static void frameActionListener(ActionEvent e) {
        /// TBM
//        oMainFrame.Info("Action event " + e.getActionCommand());
        if (e.getActionCommand().equals("Exit")) {
            if (oMainFrame.Confirm("Really want to exit?")) {
                oMainFrame.dispose();
                System.exit(0);
            }
        }
        if (e.getActionCommand().equals("OpenProject")) {
            String project = OleDialog.doSelectFile("./");
            myProject = new OleConfig();
            myProject.loadFile(project);
            new OleDialog(oMainFrame,"Project configuration").run(myProject);
        }
        if (e.getActionCommand().equals("About")) {
//            OleDialog odAbout = new OleDialog(oMainFrame, "About");
//            OleConfig ocAbout = new OleConfig();
//            ocAbout.setField("label1", "<center><h1>ClassDiagram</h1><br><br>Programmed by<br><i>Anatoli Grishenko</i>");
//            odAbout.run(ocAbout);
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
}
