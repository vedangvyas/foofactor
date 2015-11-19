#' Should this really be a factor?
#'
#' @param x factor
#'
#' @return boolean; \code{TRUE} if the number of unique values does not equal to the length, and \code{FALSE} otherwise.
#' @export
#' @examples
#' abb <- factor(c("a", "b", "b"))
#' abc <- factor(c("a", "b", "c"))
#'
#' # This should be a factor:
#' should_factor_be_factor(abb)
#'
#' # This should not be a factor
#' should_factor_be_factor(abc)
should_factor_be_factor <- function(x){
  if (is.factor(x))
    length(x) != length(unique(x))
  else
    stop("please specify a factor")
}
