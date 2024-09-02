package UX_And_GUI;

import javax.swing.*;

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

        //   ^ ^ Clickers: JButton ^ ^ - simple push button 
        JButton myJButton = new JButton();

        //   ^ ^ Clickers: JRadioButton - circular check button ^ ^
        JRadioButton myRadioButton = new JRadioButton();

        //   ^ ^ Clickers: JCheckBox - v sign check button ^ ^
        JCheckBox MyCheckBox = new JCheckBox();


        //   ^ ^ ^ Components : Text Spaces ^ ^ ^

        //   ^ ^ Text Spaces: JTextField ^ ^

        JTextField myTextField = new JTextField();

        //   ^ ^ Text Spaces: JPasswordField - letters replaced by dots ^ ^
        
        JPasswordField myPassword = new JPasswordField();

        //   ^ ^ Text Spaces: JSpinner - added up/down arrow buttons ^ ^
        JSpinner mySpinner = new JSpinner();


        //   ^ ^ ^ Components: DropDowns ^ ^ ^ //

        //   ^ ^ DropDowns : JMenu ^ ^ - upper ruler menu + dropdown //
        JMenu myMenu = new JMenu();

        //   ^ ^ DropDowns : JComboBox - SelectionBar + DropDown ^ ^ - upper ruler menu + dropdown //
        JComboBox myComboBox = new JComboBox(); // needs to add items // 

        //   ^ ^ DropDowns : JList ^ ^ - Classic dropdown //
        JList MyDropList = new JList(); // needs to add items //
        
        
        //   ^ ^ ^ Components: Bars ^ ^ ^ //

        //   ^ ^ Bars : JProgressBar ^ ^ - ? //
        
        //   ^ ^ Bars : JSlider ^ ^ - ? //

        // labels ? //

        // Java GUI: https://web.mit.edu/6.005/www/sp14/psets/ps4/java-6-tutorial/components.html
        // C GUI: https://www.wxwidgets.org/
        // Python GUI: https://docs.python.org/3/library/tkinter.html
        // 


        //   ^ ^ DropDowns : JList ^ ^ - Classic dropdown //

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
