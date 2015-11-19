test_that("freq_out create a frequency table for a factor", {
  x <- iris$Species
  res <- freq_out(x)

  e <- as.data.frame(table(x))
  colnames(e) <- c("x", "n")
  e <- dplyr::tbl_df(e)

  expect_identical(res, e)
})
