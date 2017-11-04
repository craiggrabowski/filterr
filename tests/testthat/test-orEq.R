library(filterr)

context("orEq")

test_that("orEq acts as logical-or", {
  f <- function(x, y) {
    z <- x
    orEq(x, y)

    expect_equal(x, z | y)
  }

  xx <- c(TRUE, FALSE, NA)

  for (x in xx) for (y in xx) f(x, y)
})
