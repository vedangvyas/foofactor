#' Create a frequency table for a factor
#'
#' @param x factor
#' @param n.sort one of \code{c(NULL, "ascending", "descending")}. This argument specifies how to sort the counts in the frequency table.
#'
#' @return tbl_df
#' @export
#' @examples
#' freq_out(iris$Species)
freq_out <- function(x, n.sort=NULL) {
  xdf <- dplyr::data_frame(x)
  xdf <- dplyr::count(xdf, x)

  if (!is.null(n.sort)) {
    if (n.sort == "ascending") {
      dplyr::arrange(xdf, n)
    } else if (n.sort == "descending") {
      dplyr::arrange(xdf, desc(n))
    } else {
      warning(sprintf("'%s' is not a sort option", n.sort))
      xdf
    }
  } else {
    xdf
  }
}
