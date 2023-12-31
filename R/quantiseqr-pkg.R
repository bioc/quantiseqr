#' quantiseqr package
#'
#' pkg description
#'
#'
#' @importFrom Biobase exprs fData
#' @importFrom limSolve lsei
#' @importFrom MASS rlm
#' @importFrom methods is
#' @importFrom preprocessCore normalize.quantiles
#' @importFrom stats aggregate median
#' @importFrom SummarizedExperiment assays colData
#' @importFrom utils read.table read.csv
#' @importFrom ggplot2 aes coord_flip geom_bar ggplot scale_fill_brewer
#' scale_x_discrete theme_bw aes_string
#' @importFrom tidyr gather
#' @importFrom rlang .data
#'
#' @name quantiseqr-pkg
#' @docType package
NULL



#' An exemplary dataset with samples from four patients with metastatic melanoma
#'
#' @details `quantiseqr` ships with an example dataset with samples from four
#' patients with metastatic melanoma. The dataset `quantiseqr::dataset_racle` contains
#' - a gene expression matrix (`dataset_racle$expr_mat`) generated using bulk RNA-seq
#' - 'gold standard' estimates of immune cell contents profiled with FACS
#' (`dataset_racle$ref`).
#'
#' @references Racle et al, 2017 - https://doi.org/10.7554/eLife.26476.049
#'
#' @name dataset_racle
#' @docType data
NULL


#' quanTIseq output for the simulation data of 1700 mixtures for RNA-seq data
#'
#' @details quanTIseq output for the simulation data of 1700 mixtures for RNA-seq data,
#' stored as a data.frame with 1700 rows (all the single instances of the different
#' mixtures) as returned by `run_quantiseq()`. Column names, accordingly, contain
#' the names of the component of the TIL10 signature, namely "B.cells", "Macrophages.M1",
#' "Macrophages.M2", "Monocytes", "Neutrophils", "NK.cells", "T.cells.CD4", "T.cells.CD8",
#' "Tregs", "Dendritic.cells", and "Other" (indicating for example a proxy for the
#' amount of tumor tissue).
#'
#' This can be compared (see Vignette for an example) to the ground truth information
#' on the components of the mixtures.
#'
#' @references Finotello, F., Mayer, C., Plattner, C. et al. Correction to: Molecular
#' and pharmacological modulators of the tumor immune contexture revealed by deconvolution
#' of RNA-seq data. Genome Med 11, 50 (2019). https://doi.org/10.1186/s13073-019-0655-5
#'
#' @name ti_quant_sim1700mixtures
#' @docType data
NULL


