test_that("fbind binds factor", {
  a <- iris$Species[c(1, 51, 101)]
  b <- PlantGrowth$group[c(1, 11, 21)]
  res <- fbind(a, b, level.as.appears = FALSE)
  expect_equivalent(res,
                   factor(c(levels(iris$Species),
                            levels(PlantGrowth$group))))
})
