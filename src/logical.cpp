#include <Rcpp.h>
#include <iterator>
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

// [[Rcpp::export]]
LogicalVector andEq(LogicalVector x, LogicalVector y) {

  LogicalVector::iterator it = x.begin();
  LogicalVector::iterator ity = y.begin();
  for (; it != x.end(); ++it, ++ity) {
    *it = scalar_and(*it, *ity);
  }

  return x;
}




/*** R
timesTwo(42)
*/
