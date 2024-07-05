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
        
        int get_my_x(){return my_x;}
        int get_my_y(){return my_y;}

        private: // When CPPing, think dependencies! IE encapsulation
        int my_x;
        int my_y;
    };
};



