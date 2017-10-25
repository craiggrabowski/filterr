library(filterr)

context("true")

test_that("Returns a filter object", {
  expect_true(is_filter_object(true()))
})
