#' @include filterr.R
NULL

#' A class to represent a field name
#'
#' @exportClass Column
setClass("Column")

NamedColumn <-
setClass("NamedColumn",
  slots = list(
    name = "character"
  ),
  contains = "Column"
)

as.character.NamedColumn <- function(x, ...) x@name

#' A function returning a column name
#'
#' \code{column} returns a named column.
#'
#' @param x Name
#'
#' @export
column <- function(x) NamedColumn(name = as.character(x))

#' A function indicating if an object is a column
#'
#' \code{is_column} indicates if an object is a column.
#'
#' @param x Object
#'
#' @return \code{TRUE} / \code{FALSE} iff \code{x} is a column
#'
#' @export
is_column <- function(x) is(x, "Column")


