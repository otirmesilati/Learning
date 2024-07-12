#pragma once
#include <iostream>
using namespace std;


//if not define macro goes here //
#ifndef TWO_DIG
#ifndef NO_CTOR_POINT
#ifndef YES_CTOR_POINT

#define TWO_DIG
#define NO_CTOR_POINT
#define YES_CTOR_POINT

class My_First_Class
{

    class Two_Digits
    {
        public:

        bool set_first(char input_to_set) {first = input_to_set; return true;}
        bool set_second(char input_to_set) {second = input_to_set; return true;}

        void show(); // we will explicit inline this //

        private:

        char first, second;
    };

};

// Point class with no default C'tor 

class No_Default_Point
{

    No_Default_Point(int x_input, int y_input) { my_x = x_input; my_y = y_input; } 

    bool show() { cout << "(" << my_x << "," << my_y << ")" << endl ; return true;}
    private:

    int my_x, my_y;
};

// Point class with: defualt C'tor + D'tor 

class Yes_Default_Point
{

    public:

    Yes_Default_Point(); // def C'tor
    Yes_Default_Point(int, int); // x/y C'tor

    ~Yes_Default_Point();

    // point mutators //
    bool set_x(int);
    bool set_y(int);

    // point selectors //
    int get_x();
    int get_y();

    bool show();

    private:

    int my_x, my_y;
};

// Composation of C'tor + D'tor point into line class //

#endif // YES_CTOR_POINT
#endif // NO_CTOR_POINT
#endif // TWO_DIG

inline void My_First_Class::Two_Digits::show() {} // finish implementation here //

// overriding the default c'tor creation //
Yes_Default_Point::Yes_Default_Point(){ my_x = 0; my_y = 0; }
Yes_Default_Point::Yes_Default_Point(int x_to_set, int y_to_set)
{
    my_x = x_to_set;
    my_y = y_to_set;
}
bool Yes_Default_Point::set_x(int x_to_set){} // finish implementation

// implementation of point with C'tor and D'tor