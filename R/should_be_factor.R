#' Should this really be a factor?
#'
#' @param x vector
#'
#' @return boolean; \code{TRUE} if the number of unique values does not equal to the length, and \code{FALSE} otherwise.
#' @export
#' @examples
#' # This should be a factor:
#' should_be_factor(c("a", "b", "b"))
#'
#' # This should not be a factor
#' should_be_factor(c("a", "b", "c"))
should_be_factor <- function(x){
  length(x) != length(unique(x))
}
