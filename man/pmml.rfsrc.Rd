% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pmml.rfsrc.R
\name{pmml.rfsrc}
\alias{pmml.rfsrc}
\title{Generate the PMML representation for an rfsrc object from the package \pkg{randomForestSRC}.}
\usage{
\method{pmml}{rfsrc}(
  model,
  model_name = "rsf_Model",
  app_name = "SoftwareAG PMML Generator",
  description = "Random Survival Forest Model",
  copyright = NULL,
  transforms = NULL,
  missing_value_replacement = NULL,
  ...
)
}
\arguments{
\item{model}{An rfsrc object returned by the function \code{rfsrc} with
the parameter \code{forest=TRUE}.}

\item{model_name}{A name to be given to the PMML model.}

\item{app_name}{The name of the application that generated the PMML.}

\item{description}{A descriptive text for the Header element of the PMML.}

\item{copyright}{The copyright notice for the model.}

\item{transforms}{Data transformations.}

\item{missing_value_replacement}{Value to be used as the 'missingValueReplacement'
attribute for all MiningFields.}

\item{...}{Further arguments passed to or from other methods.}
}
\value{
PMML representation of the rfsrc object.
}
\description{
Generate the PMML representation for an rfsrc object from the package \pkg{randomForestSRC}.
}
\details{
This function is used to export the geometry of the forest to other PMML
compliant applications, including graphics packages that are capable of
printing binary trees.

The \pkg{pmml} package supports randomSurvivalForest up to version 2.5.0.
}
\examples{

\dontrun{
library(randomForestSRC)

data(veteran)

veteran_mod <- rfsrc(Surv(time, status) ~ .,
  data = veteran,
  ntree = 5, forest = TRUE,
  membership = TRUE
)

veteran_mod_pmml <- pmml(veteran_mod)
}

}
\references{
\itemize{
\item H. Ishwaran, U.B. Kogalur, E.H. Blackstone, M.S.
Lauer (2008), RANDOM SURVIVAL FORESTS. \emph{The Annals of Applied
Statistics, Vol. 2, No. 3, 841-860}.

\item H. Ishwaran and Udaya B. Kogalur (2006). Random Survival Forests.
\emph{Cleveland Clinic Technical Report}.
}
}
\author{
Tridivesh Jena
}
