#' @include object.R
NULL

FalseFilterObject <-
setClass("FalseFilterObject", contains = "FilterObject")

#' A filter object representing a contradiction
#'
#' \code{true} returns a filter object representing a contradiction.
#'
#' @return A filter object which is \code{FALSE} for all rows
#'
#' @export
false <- function() FalseFilterObject()


as.character.FalseFilterObject <- function(x, ...) "FALSE"


print.FalseFilterObject <- function(x, ...)
  cat(as.character(x, ...), "\n", sep = "")


as.function.FalseFilterObject <- function(x, ...) {
  function(df) rep(FALSE, nrow(df))
}
