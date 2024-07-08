#pragma once
using namespace std;

//if not define macro goes here //
#define TWO_DIG

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

inline void My_First_Class::Two_Digits::show() {} // finish implementation here //

class No_Default_Point
{

    No_Default_Point(int x_input, int y_input) { my_x = x_input; my_y = y_input; } 

    private:

    int my_x, my_y;
};