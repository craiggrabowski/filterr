#' @include true.R
#' @include false.R
NULL

#' Negation operation
#'
#'
#'
#' @param x Filter object
#'
#' @name not_filter
NULL

#' @rdname not_filter
setMethod(`!`,
  signature = "TrueFilterObject",
  function(x) false()
)

#' @rdname not_filter
setMethod(`!`,
  signature = "FalseFilterObject",
  function(x) true()
)
