#pragma once // contrain the header only once //
using namespace std; // stding!

class My_Class 
{
    public: // This whole class will be used as a container for more classes //
    class My_Inline_Point // all definitions will be inside the header //
    {
        public:
        bool set_my_x(int x_to_set){ my_x = x_to_set; return true;} // starting with void as default logic //
        bool set_my_y(int y_to_set){ my_y = y_to_set; return true;} // starting with void as default logic //
        
        bool is_x_Bigger_then_5() {return (my_x > 5);}
        int multiply_coordinates() {return (my_x * my_y);}
        float rational_number() {return 1.5f;}

        int get_my_x(){return my_x;}
        int get_my_y(){return my_y;}

        private: // When CPPing, think dependencies! IE encapsulation
        int my_x;
        int my_y;
    };
};



