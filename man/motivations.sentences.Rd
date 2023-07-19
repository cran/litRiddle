\encoding{utf8}
\name{motivations.sentences}
\alias{motivations.sentences}


\title{
Motivations Sentences
}

\description{
Convenience function that produces a 'view' of the token table \code{motivations} with one (plain text) sentence of each motivation per row, listening \code{motivation.id}, \code{book.id}, \code{respondent.id}, \code{sentence.id}, and \code{sentence}.
}

\usage{
motivations.sentences()
}

\arguments{
  None
}

\value{
A data table containing all sentences of all given motivations and IDs related to respondents and books.
}

\references{
\url{https://literaryquality.huygens.knaw.nl/} 
}

\author{
Joris van Zundert, Saskia Lensink, Maciej Eder
}


\seealso{
\code{\link{motivations.text}}, \code{\link{reviews}}, \code{\link{respondents}}, \code{\link{books}} 
}

\examples{
# to create a data frame with one sentence per motivation per row for all motivations:
mots <-  motivations.sentences()
head( mots, n=10 )
}

