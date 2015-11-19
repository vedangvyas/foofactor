test_that("freq_out create a frequency table for a factor", {
  x <- iris$Species
  res <- freq_out(x)

  e <- as.data.frame(table(x))
  colnames(e) <- c("x", "n")
  e <- dplyr::tbl_df(e)

  expect_identical(res, e)
})

test_that("freq_out will sort output by ascending and descending order", {
  x <- factor(c(rep("three", 3), rep("two", 2), rep("five", 5)))

  expect_equal(as.character(freq_out(x, n.sort = NULL)$x),
               as.character(levels(x)))

  expect_equal(as.character(freq_out(x, n.sort = "ascending")$x),
               c("two", "three", "five"))
  expect_equal(as.character(freq_out(x, n.sort = "descending")$x),
               c("five", "three", "two"))
})

test_that("freq_out will give a warning if n.sort is not one of the options", {
  expect_warning(freq_out(iris$Species, n.sort="fake"),
                 "'fake' is not a sort option")
})
