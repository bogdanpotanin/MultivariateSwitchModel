% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gheckman.R
\name{gheckman}
\alias{gheckman}
\title{Use this function to estimate Multivariate Switch model}
\usage{
gheckman(data, outcome, selection1 = NULL, selection2 = NULL,
  selection3 = NULL, selection4 = NULL, selection5 = NULL, group = NULL,
  zo3 = NULL, ShowInfo = TRUE, onlyTwostep = FALSE,
  opts = list(algorithm = "NLOPT_LD_TNEWTON", xtol_rel = 1e-08, print_level =
  1, maxeval = 1e+06), x0 = NULL)
}
\arguments{
\item{data}{data frame containing the variables in the model}

\item{outcome}{main (continious) equation formula}

\item{selection1}{the first selecton equation formula}

\item{selection2}{the second selecton equation formula}

\item{selection3}{the third selecton equation formula}

\item{selection4}{the fourth selecton equation formula}

\item{selection5}{the fifth selecton equation formula}

\item{group}{vector which determines outcome to each group}

\item{zo3}{matrix which rows correspond to possible combination of selection equations values.}

\item{ShowInfo}{shows likelihood function optimization info}

\item{onlyTwostep}{if true then only two-step procedure used}

\item{opts}{options that are passed to nlopt}

\item{x0}{optional initial values to be used while solving optimization task}
}
\description{
Use this function to estimate Multivariate Switch model
}
\details{
This function estimates Multivariate Switch model via maximum-likelihood and two-step procedures.
This model was developed by Kossova E.V. and Potanin B.S.
Dependent variables in selection equations should have values -1 or 1.
Also there is a special value 0 which indicates that this observation is unobservable but it is necessary
to take into consideration other selection equation information while calculating likelihood function.
The i-th row of zo3 corresponds to i-th element of group. zo3 rows should contain information regarding
possible combinations of selection equations values. While group determines the outcome for each of this
possible combinations. Special 0 value for group responsible for sample selection.
}
