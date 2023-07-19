\name{books}
\alias{books}
\docType{data}

\title{
Measurements of 401 novels
}

\description{
Measurements (including word count, number of sentences, number of paragraphs, average sentence length, etc.) of 401 novels in Dutch.
}

\usage{
data(books)
}

\details{
This is a dataframe containing numerical, ordinal and lexical data
(as well as metadata) for 401 novels. To see which variables are 
provided, type \code{get.columns()}. To learn more about what 
the column names really mean, type \code{explain("books")}.
}

\source{
The dataset is a part of The Riddle of Literary Quality Project.
}

\author{
Karina van Dalen-Oskam, Joris van Zundert
}

\seealso{
\code{\link{get.columns}}, \code{\link{explain}}, \code{\link{reviews}}, 
\code{\link{respondents}}, \code{\link{frequencies}}, \code{\link{motivations}} 
}



\examples{
data(books)

print(books)
summary(books)
}

\keyword{datasets}
