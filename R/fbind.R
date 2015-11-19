#' Bind two factors together
#'
#' @param a factor
#' @param b factor
#' @param level.as.appears boolean; should the factor levels be combined as they appear?
#'
#' @return factor
#' @export
#' @examples
#' fbind(iris$Species[c(1, 51, 101)], PlantGrowth$group[c(1, 11, 21)])
fbind <- function(a, b, level.as.appears=TRUE){
  ab <- factor(c(as.character(a), as.character(b)))
  if (level.as.appears) factor(ab, levels = c(levels(a), levels(b))) else ab
}
