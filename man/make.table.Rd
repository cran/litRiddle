\encoding{utf8}
\name{make.table}
\alias{make.table}


\title{
Make Table and Plot
}

\description{
A function to make a table of frequency counts for one variable, and to plot a histogram of the results.
}

\usage{
make.table(table.of = NULL, 
    plot = TRUE, 
    xlab = table.of, 
    ylab = "count", 
    title = table.of,
    barcolor = "grey", 
    barfill = "darkgrey")
}

\arguments{
  \item{table.of}{which variable will be chosen? If not sure what variables are there, try typing \code{get.columns()} first.}
  \item{plot}{do you want a plot to be plotted? Default: \code{TRUE}.}
  \item{xlab}{name of the X axis}
  \item{ylab}{name of the Y axis}
  \item{title}{title of the plot}
  \item{barcolor}{outline color of the content}
  \item{barfill}{color used to fill the bars}
}

\details{
A basic way to show the distribution of an indicated variable from 
the \code{litRiddle} package. It provides the values, but also 
a simple histrogram. 
}

\value{
A character vector containing one chosen variable, optionally followed by a plot.
}

\references{
\url{https://literaryquality.huygens.knaw.nl/} 
}

\author{
Saskia Lensink, Maciej Eder
}


\seealso{
\code{\link{make.table2}}, \code{\link{get.columns}}
}

\examples{
make.table(table.of = "age.resp")

make.table(table.of = "age.resp", xlab = "age respondent", 
  ylab = "number of people", title = "Distribution of respondent age",
  barcolor = "red", barfill = "white")
}

