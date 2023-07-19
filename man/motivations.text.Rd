\encoding{utf8}
\name{motivations.text}
\alias{motivations.text}


\title{
Motivations Text
}

\description{
Convenience function that produces a 'view' of the token table \code{motivations} with the full text of a motivation for each motivation, listening \code{motivation.id}, \code{book.id}, \code{respondent.id}, and \code{text}.
}

\usage{
motivations.text()
}

\arguments{
  None
}

\value{
A data table containing motivations and IDs related to respondents and books.
}

\references{
\url{https://literaryquality.huygens.knaw.nl/} 
}

\author{
Joris van Zundert, Saskia Lensink, Maciej Eder
}


\seealso{
\code{\link{motivations.sentences}}, \code{\link{reviews}}, \code{\link{respondents}}, \code{\link{books}} 
}

\examples{
# to create a data frame with the full (plain) text of all motivations:
mots <-  motivations.text()
head( mots, n=10 )
}

