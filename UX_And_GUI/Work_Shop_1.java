package UX_And_GUI;

import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JFrame;
import javax.swing.JMenu;
import javax.swing.JPanel;

public class Work_Shop_1 {

    public class GUIElements
    {
        /*   & & & & & & Libraries & & & & &
         java.awt - GUI tools library, platform dependent
         java swing - built upon awt
         */

        //   & & & & & & Elements & & & & & &

        //   ^ ^ ^ ^ ^ java.swing ^ ^ ^ ^ ^

        //   ^ ^ ^ ^ Panels ^ ^ ^ ^
        JPanel myJPanel = new JPanel();

        // https://examples.javacodegeeks.com/java-swing-layouts-example/

        //   ^ ^ ^ ^ Layouts ^ ^ ^ ^
        
        // FlowLayout

        // BorderLayout
        
        // Box
        // CardLayou
        // Gridayout
        // GridBagLayout
        // Group
        // Overlay
        // Spring

        //   ^ ^ ^ ^ Windows ^ ^ ^ ^
        JFrame myJFrame = new JFrame(); // Main window
        JDialog myJDialog = new JDialog(); // sub-window, of a JFrame usually, classicaly meant for alerts

        //   ^ ^ ^ ^ Components (Window Elements) ^ ^ ^ ^
        // https://web.mit.edu/6.005/www/sp14/psets/ps4/java-6-tutorial/components.html

        //   ^ ^ ^ Components: Menu ^ ^ ^

        //   ^ ^ Menu: JMenu ^ ^ //
        JMenu myJMenu = new JMenu();

        //   ^ ^ ^  Components: Clickers ^ ^ ^

        //   ^ ^ Clickers: JButton ^ ^

        //   ^ ^ Clickers: JButton ^ ^

        //   ^ ^ Clickers: JButton ^ ^

        JButton myJButton = new JButton();

        //   ^ ^ ^ Components : Boxes ^ ^ ^

        //   ^ ^ ^ Components : Boxes ^ ^ ^

        //   ^ ^ ^ Components : Boxes ^ ^ ^

        //   ^ ^ ^ Components : Boxes ^ ^ ^

        //   ^ ^ ^ Components : Boxes ^ ^ ^

        //   ^ ^ ^ Components : Boxes ^ ^ ^

        //   ^ ^ ^ ^ java specific(?): callbacking GUI ^ ^ ^ ^
    }
    
    /*   & & & & & & GUI dependencies & & & & & */

    // want to see the window? - setVisible to true //
    // Want to see the window close? - dispose on close invoking //

    // this next part will be about regular GUI use vs defining manually the use through overriding //
    //   ^ ^ ^ ^ ^ Java Specific: Encapsulating elements logic ^ ^ ^ ^ ^
    // Main question is this: (finish this)
    
    //   ^ ^ ^ ^ ^ Scopes ^ ^ ^ ^ ^ //
    // is this class static or not? (getting a "free" pointer as this/self) //
    // is this class inheriting? maybe a friend class? //
    // interfaces for behaviour? //
}
