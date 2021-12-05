//
//  StringModifier.cpp
//  ObjectiveCWrappers
//
//  Created by Can Yoldas on 5.12.2021.
//

#include "StringModifier.hpp"
#include <iostream>

using namespace std;

string StringModifier::encryptString(string str) {
    int i;
    for(i=0; (i<100 && str[i] != '\0' && str[i] != '\n'); i++) {
        str[i] = str[i] + 2;
    }
    return str;
}


string StringModifier::decryptString(string str) {
    int i;
    for(i=0; (i<100 && str[i] != '\0' && str[i] != '\n'); i++) {
        str[i] = str[i] - 2;
    }
    return str;
}
