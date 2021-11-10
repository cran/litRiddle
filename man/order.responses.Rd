\encoding{utf8}
\name{order.responses}
\alias{order.responses}


\title{
Order Responses
}

\description{
Function that transforms the survey responses into ordered factors. Levels \code{quality.read} and \code{quality.notread}: "very bad", "bad", "a bit bad", "neutral", "a bit good", "good", "very good", "NA". Levels \code{literariness.read} and \code{literariness.notread}: "absolutely not literary", "non-literary", "not very literary", "between literary and non-literary","a bit literary", "literary", "very literary", "NA". Levels statements 4/12: "completely disagree", "disagree", "neutral", "agree", "completely agree", "NA".
}

\usage{
order.responses(bookratings.or.readingbehavior = NULL)
}

\arguments{
  \item{bookratings.or.readingbehavior}{Use either \code{"bookratings"} or \code{"readingbehavior"} to specify which of the survey questions needs to be changed into ordered factors.}
}

\value{
A data table containing relevant variables.
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
# to create a data frame with ordered factor levels of the questions 
# on reading behavior:
dat.reviews = order.responses("readingbehavior")
str(dat.reviews)

# to create a data frame with ordered factor levels of the book ratings:
dat.ratings = order.responses("bookratings")
str(dat.ratings)
}

