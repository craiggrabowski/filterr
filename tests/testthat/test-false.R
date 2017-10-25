library(filterr)

context("false")

test_that("Returns a filter object", {
  expect_true(is_filter_object(false()))
})

test_that("Prints as FALSE", {
  expect_output(print(false()), "FALSE")
})

test_that("as.function returns function returning FALSE", {
  f <- function(df) {
    expect_equal(
      as.function(false())(df),
      rep(FALSE, nrow(df))
    )
  }

  xx <- list(
    data.frame(),
    data.frame(x = NA),
    data.frame(x = seq(12L))
  )

  lapply(xx, f)
})
