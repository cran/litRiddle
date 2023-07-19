\encoding{utf8}
\name{combine.all}
\alias{combine.all}

\title{
Combine All Information of the Survey
}

\description{
Function to combine all information of the survey, reviews, and books into one big dataframe. The user can specify whether or not they want to also load the \code{freqTable} with the frequency counts of the word n-grams of the books.
}

\usage{
combine.all(load.freq.table = FALSE)
}

\arguments{
  \item{load.freq.table}{specify whether or not you want to add the \code{freqTable} with the frequency counts of the word n-grams of the books. Default is \code{FALSE}.}
}

\details{
In order to identify (possible) correlations between particular reviews
(e.g. the scores by the reviewers) with metadata about the reviewers 
themselves, it is usually required, or at least convenient, to combine
two or more datasets into one large table. 
}


\value{
A data frame combining the two (optionally three) datasets: \code{books}, 
\code{respondents}, and \code{reviews}.
}

\references{
\url{https://literaryquality.huygens.knaw.nl/} 
}

\author{
Saskia Lensink, Maciej Eder
}


\seealso{
\code{\link{reviews}}, \code{\link{respondents}}, \code{\link{motivations}}, \code{\link{books}} 
}

\examples{
# combine and load all data from the books, respondents and reviews into 
# a new dataframe (tibble format)
combine.all(load.freq.table = FALSE)

# combine and load all data from the books, respondents and reviews into 
# a new dataframe (tibble format), and additionally also load the frequency
# table of all word 1grams of the corpus used. 
combine.all(load.freq.table = TRUE)
}

