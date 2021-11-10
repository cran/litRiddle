\encoding{utf8}
\name{get.columns}
\alias{get.columns}


\title{
Print Column Names
}

\description{
The function creates a list of all the column names from all three datasets, i.d. \code{\link{reviews}}, \code{\link{respondents}}, \code{\link{books}}.
}

\usage{
get.columns()
}

\details{
This simple function works best when combined with \code{\link{explain}}, 
which provides a detailed description of particular variables. Type \code{help(explain)} for more details. 
}


\value{
A list with three elements: \code{books}, \code{respondents}, and \code{reviews}, each containing the names of supported variables.
}

\references{
\url{https://literaryquality.huygens.knaw.nl/} 
}

\author{
Saskia Lensink, Maciej Eder
}


\seealso{
\code{\link{reviews}}, \code{\link{respondents}}, \code{\link{books}}, \code{\link{explain}} 
}



