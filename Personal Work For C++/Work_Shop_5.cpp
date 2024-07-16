#pragma once
#include <iostream>
using namespace std;

// Pedantic?
// p; ->
// p(); ->
// p = new point; ->
// p = new 



//if not define macro goes here //
// Make dependencies pre-proc references for line //
#ifndef TWO_DIG
#ifndef NO_CTOR_POINT
#ifndef YES_CTOR_POINT
#ifndef MY_LINE

#define TWO_DIG
#define NO_CTOR_POINT
#define YES_CTOR_POINT
#define MY_LINE

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

class My_Line
{
    public:

    // C'tors //
    My_Line();
    My_Line(Yes_Default_Point, Yes_Default_Point);

    // Imp. Inline D'tor //
    ~My_Line() {}

    Yes_Default_Point get_first();
    Yes_Default_Point get_second();

    bool set_first(Yes_Default_Point);
    bool set_second(Yes_Default_Point);

    int get_perimeter();
    int get_Area();

    bool to_string();

    private:

    Yes_Default_Point first_point, second_point;
};

#endif // MY_LINE
#endif // YES_CTOR_POINT
#endif // NO_CTOR_POINT
#endif // TWO_DIG

inline void My_First_Class::Two_Digits::show() {} // finish implementation here //


// implementation of point with C'tor and D'tor
// overriding the default c'tor creation //
Yes_Default_Point::Yes_Default_Point(){ my_x = 0; my_y = 0; }
Yes_Default_Point::Yes_Default_Point(int x_to_set, int y_to_set)
{
    my_x = x_to_set;
    my_y = y_to_set;
}
bool Yes_Default_Point::set_x(int x_to_set){ my_x = x_to_set; return true; }
bool Yes_Default_Point::set_y(int y_to_set){ my_y = y_to_set; return true; }

bool Yes_Default_Point::show(){ cout << "(" <<  my_x << "," << my_y << ")" << endl; return true;}

My_Line::My_Line()
{first_point; second_point;}
My_Line::My_Line(Yes_Default_Point f_p, Yes_Default_Point s_p)
{
    first_point = f_p;
    second_point = s_p;
}

Yes_Default_Point My_Line::get_first(){ return first_point; }
Yes_Default_Point My_Line::get_second(){ return second_point; }

bool My_Line::set_first(Yes_Default_Point p_to_set){ first_point = p_to_set; return true; }
bool My_Line::set_second(Yes_Default_Point s_to_set){ second_point = s_to_set; return true; }   

// finish the logic + implementation //
int My_Line::get_perimeter(){return 0;}
int My_Line::get_Area(){return 0;}

// No need for D'tor //
// selectors //
// mutators //
// perimeter and area //