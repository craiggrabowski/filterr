#include <Rcpp.h>
#include <iterator>
using namespace Rcpp;

typedef LogicalVector::value_type LT;

// [[Rcpp::export]]
LogicalVector andEq(LogicalVector x, LogicalVector y) {

  LogicalVector::iterator it = x.begin();
  LogicalVector::iterator ity = y.begin();
  for (; it != x.end(); ++it, ++ity) {
    if (*it == false) {

    } else if (*ity == false) {
      *it = false;
    } else
    *it = (LogicalVector::is_na(*it) || LogicalVector::is_na(*ity))
        ? NA_LOGICAL : (*it && *ity);
  }

  return x;
}




/*** R
timesTwo(42)
*/
