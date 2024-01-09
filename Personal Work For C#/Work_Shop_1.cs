using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace C_Sharp_Personal_Projects
{
    class Personal_Works_1
    {
        var random = new Random();
        int month = random.Next(1, 13); // creates a number between 1 and 12
        int dice = random.Next(1, 7);   // creates a number between 1 and 6
        int card = random.Next(52);     // creates a number between 0 and 51

        // using array initializer
        int[] terms = { 1, 2, 3, 4, 5, 6, 7 };
        // using a for loop
        int[] terms = new int[400];
        for (int i = 0; i < terms.count(); i++)
        {
           terms[i] = value;
        }

        string author = "Katy McClachlen";
        // converts a C# string to a byte array
        byte[] bytes = Encoding.ASCII.GetBytes(author);
        foreach (byte b in bytes)
        {
           Console.WriteLine(b);
        }

        Personal_Works_1() { }
        public void TBD() { Console.WriteLine("Coming soon~"); }
    }
}
