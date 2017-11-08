library(filterr)

context("orEq")

test_that("orEq acts as logical-or", {
  f <- function(x, y) {
    z <- x
    orEq(x, y)

    expect_equal(x, z | y)
  }

  xx <- c(TRUE, FALSE, NA)

  for (x in xx) f(TRUE, x)
  #f(TRUE, TRUE)
  #f(TRUE, FALSE)
  #f(TRUE, NA)
  f(FALSE, TRUE)
  f(FALSE, FALSE)
  f(FALSE, NA)
  f(NA, TRUE)
  f(NA, FALSE)
  f(NA, NA)
})
