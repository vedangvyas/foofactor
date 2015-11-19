test_that("fbind binds factor", {
  a <- iris$Species[c(1, 51, 101)]
  b <- PlantGrowth$group[c(1, 11, 21)]
  res <- fbind(a, b, level.as.appears = FALSE)
  expect_equivalent(res,
                   factor(c(levels(iris$Species),
                            levels(PlantGrowth$group))))
})

test_that("fbind binds factor levels as they appear", {
  a <- iris$Species[c(1, 51, 101)]
  b <- PlantGrowth$group[c(1, 11, 21)]
  res <- levels(fbind(a, b, level.as.appears = TRUE))
  expect_equivalent(res,
                    c(levels(a), levels(b)))
})

test_that("fbind results to NA if it tries to bind non factors", {
  res <- fbind("a", "b")
  expect_identical(res,
                   as.factor(c(NA, NA)))
})
