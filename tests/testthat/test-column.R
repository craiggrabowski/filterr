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

test_that("column converts to character as field name", {
  f <- function(x) expect_equal(
    as.character(column(x)),
    x
  )

  xx <- list(
    "x"
  )

  lapply(xx, f)
})

test_that("column prints as character", {
  f <- function(x) expect_output(print(column(x)), x)

  xx <- list(
    "x"
  )

  lapply(xx, f)
})
