library(filterr)

context("true")

test_that("Returns a filter object", {
  expect_true(is_filter_object(true()))
})

test_that("Prints as TRUE", {
  expect_output(print(true()), "TRUE")
})

test_that("as.function returns function returning TRUE", {
  f <- function(df) {
    expect_equal(
      as.function(true())(df),
      rep(TRUE, nrow(df))
    )
  }

  xx <- list(
    data.frame(),
    data.frame(x = NA),
    data.frame(x = seq(12L))
  )

  lapply(xx, f)
})
