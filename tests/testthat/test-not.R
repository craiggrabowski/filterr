library(filterr)

context("`!`")

test_that("true() / false()", {
  expect_equal(!true(), false())
  expect_equal(!false(), true())
})
