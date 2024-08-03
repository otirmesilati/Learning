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
#ifndef WHOLE_POINT
#ifndef MY_LINE
#ifndef MY_STRING

#define TWO_DIG
#define NO_CTOR_POINT
#define YES_CTOR_POINT
#define WHOLE_POINT
#define MY_LINE
#define MY_STRING

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

class Whole_Point
{
    public:

    Whole_Point();
    Whole_Point(int, int);
    Whole_Point(const Whole_Point&);
    ~Whole_Point();

    int get_x();
    int get_y();
    bool set_x(int);
    bool set_y(int);

    bool to_string();


    private:

    int my_x, my_y;
};

class My_Line
{
    public:

    // C'tors //
    My_Line();
    My_Line(int, int, int, int);
    My_Line(Yes_Default_Point, Yes_Default_Point);

    // Imp. Inline D'tor //
    ~My_Line() {}

    Yes_Default_Point get_first();
    Yes_Default_Point get_second();

    bool set_first(Yes_Default_Point);
    bool set_second(Yes_Default_Point);

    int get_length();

    bool to_string(); // full implementation
    bool show(); // using point's API

    private:

    Yes_Default_Point first_point, second_point;
};

class My_String
{
    public:

    My_String(const char*);

    ~My_String(); // this will be implemented

    bool to_string();

    private:

    char* p_str;
    char a_str[250];
       
}; 


#endif // MY_STRING!
#endif // MY_LINE!
#endif // WHOLE_POINT! 
#endif // YES_CTOR_POINT!
#endif // NO_CTOR_POINT!
#endif // TWO_DIG!

inline void My_First_Class::Two_Digits::show() 
{
    cout << "first : " << first << ",second : " << second << ",third : " << "\n";
} 


// implementation of point with C'tor and D'tor (no init list)
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

// adding CCt'or to point //

// Let's add the init list
Whole_Point::Whole_Point(): my_x(0), my_y(0) { }
Whole_Point::Whole_Point(int x_val, int y_val): my_x(x_val), my_y(y_val) { }
Whole_Point::Whole_Point(const Whole_Point& pnt_cpy): my_x(pnt_cpy.my_x), my_y(pnt_cpy.my_y) { }

int Whole_Point::get_x(){ return my_x; }
int Whole_Point::get_y(){ return my_y;}
bool Whole_Point::set_x(int x_to_set){ my_x = x_to_set; return true; }
bool Whole_Point::set_y(int y_to_set){ my_y = y_to_set; return true; }

bool Whole_Point::to_string(){ cout << "(" << my_x << "," << my_y << ")" << endl ;return true; }

// composing point class - line

My_Line::My_Line()
{first_point; second_point;}
My_Line::My_Line(int f_x, int f_y, int s_x,int s_y): first_point(f_x, f_y), second_point(s_x, s_y) {}
My_Line::My_Line(Yes_Default_Point f_p, Yes_Default_Point s_p): first_point(f_p), second_point(s_p) {}

Yes_Default_Point My_Line::get_first(){ return first_point; }
Yes_Default_Point My_Line::get_second(){ return second_point; }

bool My_Line::set_first(Yes_Default_Point p_to_set){ first_point = p_to_set; return true; }
bool My_Line::set_second(Yes_Default_Point s_to_set){ second_point = s_to_set; return true; }   

// finish the logic + implementation //
int My_Line::get_length() { return first_point.get_y() - second_point.get_x();}
// what if the sum will be negative? //

bool My_Line::to_string(){ cout << "(" << first_point.get_x() << "," << first_point.get_y() << ") , (" << 
second_point.get_x() << "," <<second_point.get_y() << ")"; return true; }

bool My_Line::show() {cout << first_point.show() << "," << second_point.show() << endl; return true;}

// my string implementation //
// we can init here! finish this//
My_String::My_String(const char* str_to_inp = NULL)
{
    if(str_to_inp != nullptr) // same as if(str)
    {
        /*p_str memory allocation:
        1. new keyword
        size finding:
        2.1. add 1 character for null in char list
        2.2. converting from size_t to int
        */
        p_str = new char[(int)(strlen(str_to_inp +1))];
        // we'll copy the characters once with a loop
        // and once with the strcpy function

    }
    
}
// D'tor
// to string