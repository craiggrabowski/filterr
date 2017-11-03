library(filterr)

context("andEq")

test_that("andEq acts as logical-and", {
  f <- function(x, y) {
    z <- x
    andEq(x, y)

    expect_equal(x, z & y)
  }

  xx <- c(TRUE, FALSE, NA)

  for (x in xx) for (y in xx) f(x, y)
})
