% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/quantiseqr_helpers.R
\name{extract_ti_from_se}
\alias{extract_ti_from_se}
\title{Extract tumor immune quantifications}
\usage{
extract_ti_from_se(se)
}
\arguments{
\item{se}{A \code{SummarizedExperiment} object, or any of its derivates, which
contains the quantifications extracted via \code{quantiseqr} in its \code{colData} slot.}
}
\value{
A data.frame, formatted as required by downstream functions
}
\description{
Extract tumor immune quantifications from a SummarizedExperiment object,
previously processed with \code{run_quantiseqr()}
}
\examples{
data(dataset_racle)
dim(dataset_racle$expr_mat)

# using a SummarizedExperiment object
library("SummarizedExperiment")
se_racle <- SummarizedExperiment(
  assays = List(
    abundance = dataset_racle$expr_mat
  ),
  colData = DataFrame(
    SampleName = colnames(dataset_racle$expr_mat)
  )
)

res_run_SE <- quantiseqr::run_quantiseq(
    expression_data = se_racle,
    signature_matrix = "TIL10",
    is_arraydata = FALSE,
    is_tumordata = TRUE,
    scale_mRNA = TRUE
)

extract_ti_from_se(res_run_SE)

}
