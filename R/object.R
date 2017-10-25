#' @include filterr.R
NULL

setClass("FilterObject")


#' Indicator function for filter objects
#'
#' \code{is_filter_object} indicates if a given object is a
#' filter object.
#'
#' @param x Object
#'
#' @return \code{TRUE}/\code{FALSE}
#'
#'
#'
#' @export
is_filter_object <- function(x) is(x, "FilterObject")

