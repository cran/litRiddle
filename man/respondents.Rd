\name{respondents}
\alias{respondents}
\docType{data}

\title{
Respondents' Answers
}

\description{
The information about the reviewers that participated in the survey called The National Reader Survey (2013).
}

\usage{
data(respondents)
}

\details{
This is a dataframe containing numerical, ordinal and textual data
about the 13541 reviewers that scored 401 novels. To see which 
variables are provided, type \code{get.columns()}. To learn more 
about what  the column names really mean, 
type \code{explain("respondents")}.
}

\source{
The dataset is a part of The Riddle of Literary Quality Project.
}

\author{
Karina van Dalen-Oskam, Joris van Zundert
}

\seealso{
\code{\link{get.columns}}, \code{\link{explain}}, \code{\link{books}}, 
\code{\link{reviews}}, \code{\link{frequencies}}
}



\examples{
data(respondents)

print(respondents)
summary(respondents)
}
\keyword{datasets}
