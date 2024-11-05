#include "utils.h"
#include <iostream>
#include <cstring>

void greet_user(const std::string& name) {
    std::string processed = process_input(name);
    std::cout << "Hello, " << processed << "!" << std::endl;
}

std::string process_input(const std::string& input) {
    char buffer[10];
    strncpy(buffer, input.c_str(), sizeof(buffer) - 1);  // Still potentially unsafe
    buffer[sizeof(buffer) - 1] = '\0';
    return std::string(buffer);
}

