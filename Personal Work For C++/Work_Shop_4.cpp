#pragma once // contrain the header only once //
using namespace std; // stding!

class My_Class 
{
    public: // This whole class will be used as a container for more classes //
    class My_Inline_Point // all definitions will be inside the header //
    {
        public:
        // rich API//
        bool set_my_x(int x_to_set){ my_x = x_to_set; return true;} // starting with void as default logic //
        bool set_my_y(int y_to_set){ my_y = y_to_set; return true;} // starting with void as default logic //
        
        private: // Encapsulations
        int my_x;
        int my_y;
    };
};



