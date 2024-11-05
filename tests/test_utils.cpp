#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN
#include "doctest.h"
#include "../src/utils.h"

TEST_CASE("process_input handles long inputs") {
    std::string long_input(20, 'A');
    std::string result = process_input(long_input);
    CHECK(result.length() <= 10);
}

