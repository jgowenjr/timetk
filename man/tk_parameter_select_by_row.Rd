% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tune-parameter_ranking.R
\name{tk_parameter_select_by_row}
\alias{tk_parameter_select_by_row}
\title{Select Hyperparameters}
\usage{
tk_parameter_select_by_row(.data, .row_id = 1)
}
\arguments{
\item{.data}{A \code{tibble} of class "tune_results"}

\item{.row_id}{A numeric Row ID to select from the model ranking}
}
\value{
A \code{tibble} or \code{data.frame} with parameter values.
}
\description{
\code{tk_parameter_select_by_row()} provides a wrapper to \code{tune::select_best()} that
makes it easy to select the n-th model.
}
\examples{
library(dplyr)
library(tune)
library(timetk)

# Output of tune::tune_grid()
arima_workflow_tuned

# PARAMETER RANKING ----
arima_workflow_tuned \%>\%
    tk_parameter_ranking(.max_failure_rate = 1)

# PARAMETER SELECTION ----
arima_workflow_tuned \%>\%
    tk_parameter_ranking(.max_failure_rate = 1) \%>\%
    tk_parameter_select_by_row(.row_id = 3)

}
