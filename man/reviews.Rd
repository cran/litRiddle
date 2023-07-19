\name{reviews}
\alias{reviews}
\docType{data}

\title{
Reviewers' scores
}

\description{
Reviewers' scores from the survey called The National Reader Survey (2013).
}

\usage{
data(reviews)
}

\details{
This is a dataframe containing numerical, ordinal and textual data
for thousands of individual reviews (and the reviewers' scores) 
for 401 novels. To see which variables are provided, 
type \code{get.columns()}. To learn more about what 
the column names really mean, type \code{explain("reviews")}.
}

\source{
The dataset is a part of The Riddle of Literary Quality Project.
}

\author{
Karina van Dalen-Oskam, Joris van Zundert
}

\seealso{
\code{\link{get.columns}}, \code{\link{explain}}, \code{\link{books}}, 
\code{\link{frequencies}}, \code{\link{respondents}}, \code{\link{motivations}} 
}


\examples{
data(reviews)

print(reviews)
summary(reviews)

}

\keyword{datasets}
