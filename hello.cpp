#include <iostream>
#include "hello.h"

using namespace std;

Hello::Hello(){
    answer= 42;
    cout << "Hello World!" << endl;
}

Hello::~Hello(){
    cout << "Good Bye World!" << endl;
}

void Hello::answer_it(){
    cout << this->answer << endl;
}
