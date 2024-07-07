#pragma once // contrain the header only once //
#include <iostream> // IO 
using namespace std; // stding!

class My_Class 
{
    public: 
    // OOP: this whole My_Class class is a contrainer for 
    // other classes that deliver ideas. 

    // idea: Inline functions
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

        bool show(){ cout << "x = " << my_x << ", y = " << my_y << endl; return true;} // finish this //

        private:
        
        int my_x;
        int my_y;
    };

    class My_Point
    {
        public:
        bool set_my_x(int x_to_set);
        bool set_my_y(int y_to_set);
        
        int get_my_x();
        int get_my_y();

        bool show();

        private:

        int my_x;
        int my_y;

    };
};
void my_Class_main();

bool My_Class::My_Point::set_my_x(int x_to_set){ my_x = x_to_set; return true;}
bool My_Class::My_Point::set_my_y(int y_to_set){ my_y = y_to_set; return true;}

int My_Class::My_Point::get_my_x(){return my_x;}
int My_Class::My_Point::get_my_y(){return my_y;}

bool My_Class::My_Point::show(){ cout << " x = " << my_x << " , y = " << my_y;} 

int class_points_main()
{
    // add the main logic here //
}