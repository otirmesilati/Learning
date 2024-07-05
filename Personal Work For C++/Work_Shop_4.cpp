#pragma once // contrain the header only once //
using namespace std; // stding!

class My_Class 
{
    public: // This whole class will be used as a container for more classes //
    class My_Inline_Point // all definitions will be inside the header //
    {
        private: // Encapsulations
        int my_x;
        int my_y;
    };
};



