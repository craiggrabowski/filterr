#include <Rcpp.h>
#include <iterator>
#include <algorithm>
using namespace Rcpp;

typedef LogicalVector::iter_traits::value_type LT;

LT scalar_and(LT x, LT y) {
  if (x == false)
    return x;
  else if (y == false)
    return y;
  else if (LogicalVector::is_na(x) || LogicalVector::is_na(y))
    return NA_LOGICAL;
  else
    return (x && y);
}

LT scalar_or(LT x, LT y) {
  if (x == true)
    return x;
  else if (y == true)
    return y;
  else if (LogicalVector::is_na(x) || LogicalVector::is_na(y))
    return NA_LOGICAL;
  else
    return (x || y);
}

// [[Rcpp::export]]
LogicalVector andEq(LogicalVector x, LogicalVector y) {
  std::transform(x.begin(), x.end(),
    y.begin(), x.begin(), scalar_and);
  return x;
}

// [[Rcpp::export]]
LogicalVector orEq(LogicalVector x, LogicalVector y) {
  std::transform(x.begin(), x.end(),
                 y.begin(), x.begin(), scalar_or);
  return x;
}





/*** R
timesTwo(42)
*/
