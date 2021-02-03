#include "Example.h"
#include "gtest/gtest.h"

TEST (Example, Test1)
{
    EXPECT_EQ(Add(1, 2), 3U);
}

TEST (Example, Test2)
{
    EXPECT_EQ(Add(1, 3), 4U);
}