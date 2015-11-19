test_that("should_factor_be_factor returns TRUE when unique value does not equal length", {
  expect_true(should_factor_be_factor(factor(c("a", "b", "b"))))
})

test_that("should_factor_be_factor returns FALSE when unique value equal length", {
  expect_false(should_factor_be_factor(factor(c("a", "b", "c"))))
})

test_that("the input of should_factor_be_factor is a factor", {
  expect_error(should_factor_be_factor(c("1", "2", "3")),
               "please specify a factor")
})
