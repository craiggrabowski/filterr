library(filterr)

context("is_filter_object")


test_that("Basic R object are not filter objects", {
  f <- function(x) expect_false(is_filter_object(x))

  xx <- list(
    numeric(0),
    "",
    rep(3L, 4L),
    FALSE,
    NULL
  )

  lapply(xx, f)
})
