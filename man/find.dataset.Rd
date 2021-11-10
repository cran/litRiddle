\encoding{utf8}
\name{find.dataset}
\alias{find.dataset}


\title{
Find Dataset, Given a Column Name
}

\description{
Return the name of the dataset where a column can be found.
}

\usage{
find.dataset(name = NULL)
}

\arguments{
  \item{name}{specify the name of the variable you want to find.}
}

\details{
The function returns the name of the data table containing a given column name.
}

\value{
A character vector containing names of relevant datasets.
}

\references{
\url{https://literaryquality.huygens.knaw.nl/} 
}

\author{
Saskia Lensink, Maciej Eder
}


\seealso{
\code{\link{reviews}}, \code{\link{respondents}}, \code{\link{books}} 
}

\examples{
find.dataset("book.id")
find.dataset("age.resp")
}

