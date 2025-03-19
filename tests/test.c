#include <criterion/criterion.h>
#include <criterion/redirect.h>

#include "../my.h"

Test(main_suite, test_main) {
    int result = main();
    cr_assert_eq(result, 0, "Expected main to return 0, but it returned %d", result);
}
