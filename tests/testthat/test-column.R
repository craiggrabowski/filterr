library(filterr)

context("column")

test_that("column returns a column object", {
  f <- function(x) expect_true(is_column(column(x)))

  xx <- list(
    "x",
    "y"
  )

  lapply(xx, f)
})
