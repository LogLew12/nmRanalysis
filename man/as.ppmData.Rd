% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/as.ppmData.R
\name{as.ppmData}
\alias{as.ppmData}
\title{Convert Data to Appropriate NMR Class}
\usage{
as.ppmData(
  e_data,
  f_data,
  edata_cname,
  fdata_cname,
  align = FALSE,
  instrument_strength,
  ph = NULL,
  solvent,
  temperature,
  concentration = NULL,
  ...
)
}
\arguments{
\item{e_data}{a \eqn{p \times n + 1} data.frame of expression data, where \eqn{p} is the number of ppm bins observed and \eqn{n} is the number of samples (an additional identifier/name column should also be present anywhere in the data.frame). Each row corresponds to data for each ppm. One column specifying a unique identifier for each row must be present.}

\item{f_data}{a data.frame with \eqn{n} rows. Each row corresponds to a sample with one column giving the unique sample identifiers found in e_data column names and other columns providing qualitative and/or quantitative traits of each sample.}

\item{edata_cname}{character string specifying the name of the column containing the ppm identifiers in \code{e_data} and \code{e_meta} (if applicable).}

\item{fdata_cname}{character string specifying the name of the column containing the sample identifiers in \code{f_data}.}

\item{align}{logical, defaults to FALSE. If TRUE, aligns e_data using the CluPA spectrum alignment algorithm from the `speaq` R package}

\item{instrument_strength}{numeric value specifying the strength (in MHz) of the NMR instrument samples were run on.}

\item{ph}{numeric value specifying the pH samples were run at.}

\item{solvent}{character string defining solvent used. Possible solvents are 'h2o' and 'd2o'.}

\item{temperature}{numeric value specifying the temperature (in K) of the experiment}

\item{concentration}{numeric value specifying the concentration (in mM) of the standard (e.g. DSS) used in the experiment}

\item{...}{further arguments}
}
\description{
Converts a list object or several data.frames of ppm-level data to an object of the class 'ppmData'. Objects of the class 'ppmData' are lists with two obligatory components \code{e_data} and \code{f_data}.

 Copyright (C) 2022 Battelle Memorial Institute

 This program is free software; you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation; either version 2 of the License, or
 (at your option) any later version.

 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License along
 with this program; if not, write to the Free Software Foundation, Inc.,
 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
}
\details{
Objects of class 'ppmData' contain some attributes that are referenced by downstream functions. These attributes can be changed from their default value by manual specification. A list of these attributes as well as their default values are as follows:
\tabular{ll}{
check.names \tab Logical defaults to TRUE. Indicates whether 'check.names' attribute of returned omicsData object is TRUE or FALSE. \cr
}
Computed values included in the \code{data_info} attribute are as follows:
\tabular{ll}{
num_miss_obs \tab The number of missing observations.\cr
\tab \cr
prop_missing \tab The proportion of \code{e_data} values that are NA. \cr
\tab \cr
num_samps \tab The number of samples that make up the columns of \code{e_data}.\cr
\tab \cr
}
}
\author{
Allison Thompson
}
