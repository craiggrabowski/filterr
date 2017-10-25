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


print.TrueFilterObject <- function(x, ...)
  cat("TRUE", "\n", sep = "")
