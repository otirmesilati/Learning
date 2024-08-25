package UX_And_GUI;

import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JFrame;
import javax.swing.JMenu;
import javax.swing.JPanel;

public class Work_Shop_1 {

    public class GUIElements
    {
        /*   & & & & & & Libraries
         java.awt - GUI tools library, platform dependent
         java swing - built upon awt
         */

        //   & & & & & & Elements & & & & & &

        //   ^ ^ ^ ^ ^ java.swing ^ ^ ^ ^ ^

        //   ^ ^ ^ ^ Panels ^ ^ ^ ^
        JPanel myJPanel = new JPanel();

        //   ^ ^ ^ ^ Layouts ^ ^ ^ ^

        //   ^ ^ ^ ^ Windows ^ ^ ^ ^
        JFrame myJFrame = new JFrame(); // Main window
        JDialog myJDialog = new JDialog(); // sub-window, of a JFrame usually, classicaly meant for alerts

        //   ^ ^ ^ ^ Components (Window Elements) ^ ^ ^ ^

        //   ^ ^ ^ Components: Menu ^ ^ ^ 
        JMenu myJMenu = new JMenu();

        //   ^ ^ ^  Components: Buttons ^ ^ ^
        JButton myJButton = new JButton();

        //   ^ ^ ^ Components : Boxes ^ ^ ^

        // ?

        //   ^ ^ ^ ^ java specific(?): callbacking GUI ^ ^ ^ ^
    }

}
