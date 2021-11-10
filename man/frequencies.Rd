\name{frequencies}
\alias{frequencies}
\docType{data}

\title{
Word frequencies (5000 most frequent words) of 401 novels.
}

\description{
Word frequencies (5000 most frequent words) of 401 novels in Dutch.
}

\usage{
data(frequencies)
}

\details{
This is a dataframe containing numerical values for word frequencies
of the 5000 most frequent words (in a descending order of frequency)
of 401 literary novels in Dutch. The table contains relative frequencies,
meaning that the original word occurencies from a book were divided 
by the total number of words of the book in question. The measurments
were obtained using the R package \code{stylo}, and were later rounded 
to the 5th digit. To learn more 
about the novels themselves, type \code{help(books)}.
}

\source{
The dataset is a part of The Riddle of Literary Quality Project.
}


\author{
Karina van Dalen-Oskam, Maciej Eder
}

\seealso{
\code{\link{get.columns}}, \code{\link{explain}}, \code{\link{books}}, 
\code{\link{reviews}}, \code{\link{respondents}}
}



\examples{
data(frequencies)

print(frequencies)
summary(frequencies)

}

\keyword{datasets}
