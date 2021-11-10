\encoding{utf8}
\name{make.table2}
\alias{make.table2}


\title{
Make Table of Two Variables and Plot
}

\description{
A function to make a table of frequency counts for two variables, and to plot a histogram of the results.
}

\usage{
make.table2(table.of = NULL, 
    split = NULL, 
    plot = TRUE, 
    xlab = table.of, 
    ylab = "counts", 
    title = table.of,
    barcolor = "grey", 
    barfill = "darkgrey")
}

\arguments{
  \item{table.of}{which variable will be chosen? If not sure what variables are there, try typing \code{get.columns()} first.}
  \item{split}{the variable that will be used to split the data: see the Examples section below for, well, some examples.}
  \item{plot}{do you want a plot to be plotted? Default: \code{TRUE}.}
  \item{xlab}{name of the X axis}
  \item{ylab}{name of the Y axis}
  \item{title}{title of the plot}
  \item{barcolor}{outline color of the content}
  \item{barfill}{color used to fill the bars}
}

\details{
Unlike \code{\link{make.table}}, this function provides a comparison
of two variables at a time, or to be more precise: a distribution of 
an indicated variable when subdivided into two or more groups.
The function provides the values themselves, but also a final histrogram. 
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
\code{\link{make.table}}, \code{\link{get.columns}}
}

\examples{

make.table2(table.of = "age.resp", split = "gender.resp")
make.table2(table.of = "literariness.read", split = "gender.author")

\donttest{

# Note that you can only provide an argument to the 'split' variable 
# that has less than 31 unique values, to avoid uninterpretable outputs:
make.table2(table.of = "age.resp", split = "zipcode") 

# You can also adjust the x label, y label, title, and colors.
make.table2(table.of = "age.resp", split = "gender.resp", 
  xlab = "age respondent", ylab = "number of people", 
  barcolor = "purple", barfill = "yellow")
make.table2(table.of = "literariness.read", split = "gender.author", 
  xlab = "Overall literariness scores", ylab = "number of people", 
  barcolor = "black", barfill = "darkred")
}
}
