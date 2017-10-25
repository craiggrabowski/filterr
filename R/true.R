#' @include object.R
NULL

TrueFilterObject <-
setClass("TrueFilterObject", contains = "FilterObject")

#' A filter object representing a tautology
#'
#' \code{true} returns a filter object representing a tautology.
#'
#' @return A filter object which is \code{TRUE} for all rows
#'
#' @export
true <- function() TrueFilterObject()


as.character.TrueFilterObject <- function(x, ...) "TRUE"


print.TrueFilterObject <- function(x, ...)
  cat(as.character(x, ...), "\n", sep = "")


as.function.TrueFilterObject <- function(x, ...) {
  function(df) rep(TRUE, nrow(df))
}
