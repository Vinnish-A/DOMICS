% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getMoCluster.R
\name{getMoCluster}
\alias{getMoCluster}
\title{Get subtypes from MoCluster}
\usage{
getMoCluster(
  data = NULL,
  N.clust = NULL,
  type = rep("gaussian", length(data)),
  ncomp = NULL,
  method = "CPCA",
  option = "lambda1",
  k = 10,
  center = TRUE,
  scale = TRUE,
  clusterAlg = "ward.D"
)
}
\arguments{
\item{data}{List of matrices.}

\item{N.clust}{Number of clusters.}

\item{type}{Data type corresponding to the list of matrics, which can be gaussian, binomial or possion.}

\item{ncomp}{An integer value to indicate the number of components to calculate. To calculate more components requires longer computational time.}

\item{method}{A string value can be one of CPCA, GCCA and MCIA; CPCA by default.}

\item{option}{A string value could be one of c('lambda1', 'inertia', 'uniform') to indicate how the different matrices should be normalized.}

\item{k}{A numeric value to indicate the absolute number (if k >= 1) or the proportion (if 0 < k < 1) of non-zero coefficients for the variable loading vectors. It could be a single value or a vector has the same length as x so the sparsity of individual matrix could be different.}

\item{center}{A logical value to indicate if the variables should be centered. TRUE by default.}

\item{scale}{A logical value to indicate if the variables should be scaled. TRUE by default.}

\item{clusterAlg}{A string value to indicate the cluster algorithm for distance.}
}
\value{
A list with the following components:

        \code{fit}        an object returned by \link[mogsa]{mbpca}.

        \code{clust.res}  a data.frame storing sample ID and corresponding clusters.

        \code{feat.res}   the results of features selection process.

        \code{clust.dend} a dendrogram of sample clustering.

        \code{mo.method}  a string value indicating the method used for multi-omics integrative clustering.
}
\description{
This function wraps the MoCluster (Multiple omics data integrative clustering) algorithm and provides standard output for `getMoHeatmap()` and `getConsensusMOIC()`.
}
\examples{
# There is no example and please refer to vignette.
}
\references{
Meng C, Helm D, Frejno M, Kuster B (2016). moCluster: Identifying Joint Patterns Across Multiple Omics Data Sets. J Proteome Res, 15(3):755-765.
}
