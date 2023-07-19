\name{motivations}
\alias{motivations}
\docType{data}

\title{
Reviewers' motivations for their scores (if given)
}

\description{
Reviewers' motivations for their scores (if provided by the respondents) from the survey called The National Reader Survey (2013).
}

\usage{
data(motivations)
}

\details{
This is a dataframe containing that lists all tokens from all
motivations together with lemma and POS tag information.
To see which variables are provided, 
type \code{get.columns()}. To learn more about what 
the column names really mean, type \code{explain("motivations")}.
}

\source{
The dataset is a part of The Riddle of Literary Quality Project.
}

\author{
Karina van Dalen-Oskam, Joris van Zundert
}

\seealso{
\code{\link{get.columns}}, \code{\link{explain}}, \code{\link{books}}, 
\code{\link{frequencies}}, \code{\link{respondents}}, \code{\link{reviews}}
}


\examples{
data(motivations)

head(motivations, n = 30)
summary(motivations)

}

\keyword{datasets}
