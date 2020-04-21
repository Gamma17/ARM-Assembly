#include <glib.h>

extern int add(int a, int b);

void test_add_1() {
    int expected = 10;
    int actual = add(5, 5);
    g_assert_cmpint(actual, ==, expected);
}

void test_should_fail() {
    int expected = 11;
    int actual = add(5, 5);
    g_assert_cmpint(actual, ==, expected);
}

int main(int argc, char **argv) {
    g_test_init(&argc, &argv, NULL);
    g_test_add_func("/set0/add test", test_add_1);
    g_test_add_func("/set1/fail test", test_should_fail);
    return g_test_run();
}
