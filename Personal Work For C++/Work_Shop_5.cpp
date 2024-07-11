#pragma once
#include <iostream>
using namespace std;


//if not define macro goes here //
#ifndef TWO_DIG
#ifndef NO_CTOR_POINT

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

    private:

    int my_x, my_y;
};

#endif // NO_CTOR_POINT
#endif // TWO_DIG

inline void My_First_Class::Two_Digits::show() {} // finish implementation here //