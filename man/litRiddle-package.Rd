\name{litRiddle-package}
\alias{litRiddle-package}
\alias{litRiddle}
\docType{package}

\title{
R Package to Research the Riddle of Literary Quality
}

\description{
The package contains the data of a reader survey about fiction in Dutch, a description of the novels the readers rated, and the results of stylistic measurements of the novels. The package also contains functions to combine, analyze, and visualize these data.

We will be grateful if you cite the package in your publications. To get the updated citation information please type: \code{citation("litRiddle")}.
}

\details{
The package litRiddle presents data generated in the project The Riddle of Literary Quality (2012--2019) in which a team of digital humanists aimed to find out if books that readers considered to be highly literary have a different set of values for stylistic features than books the same readers did not consider to be very literary.

The package contains five data sets:
  \enumerate{
    \item The reviews gathered from a hired representative panel of citizens of the Netherlands and in a large online survey called The National Reader Survey (2013). Type \cite{help(reviews)} for details.
    \item The motivations that reviewers give for a subset or all of their ratings are provided as plain text and as POS tagged data. Type \cite{help(motivations)} for details.
    \item Data about the reviewers: age, gender, zipcode, average 
    number of books read per year etc. Type \cite{help(respondents)} 
    for details.
    \item A list of the 401 books that the survey respondents evaluated with metadata such as author, title, publisher, gender of the author, and for translations the original language, etc., as well as a number
    of stylometric measurements such as the average sentence lengh etc.
    Type \cite{help(books)} for details.
    \item For each of the 401 books, the relative frequencies of 5000
    most frequent words are provided (due to copyright issues the books themselves cannot be made available). Type \cite{help(frequencies)} 
    for details.
  }
To learn more about the functions provided to analyze the above datasets, type the function \code{explain()} in your terminal.
}

\author{
Maciej Eder, Joris van Zundert, Karina van Dalen-Oskam, Saskia Lensink
}

\references{
Information in Dutch about the package can be found at \url{https://karinavdo.github.io/RaadselLiteratuur/02_07_data_en_R_package.html}

Information in English at \url{https://github.com/karinavdo/LitRiddleData/blob/master/README.md}

Karina van Dalen-Oskam (2023). The Riddle of Literary Quality: A Computational Approach. Amsterdam University Press.

Karina van Dalen-Oskam (2021). Het raadsel literatuur. Is literaire kwaliteit meetbaar? Amsterdam University Press.

Maciej Eder, Saskia Lensink, Joris van Zundert, Karina van Dalen-Oskam (2022). Replicating The Riddle of Literary Quality: The litRiddle package for R, in: Digital Humanities 2022 Conference Abstracts. The University of Tokyo, Japan, 25–29 July 2022, p. 636-637 \url{https://dh2022.dhii.asia/dh2022bookofabsts.pdf}

Karina van Dalen-Oskam (2015). The Riddle of Literary Quality. Op zoek naar conventies van literariteit. "Vooys: tijdschrift voor letteren" 32(3): 25-33, \url{https://literaryquality.huygens.knaw.nl/?p=537#more-537}

Corina Koolen, Karina van Dalen-Oskam, Andreas van Cranenburgh, Erica Nagelhout (2020). Literary quality in the eye of the Dutch reader: The National Reader Survey. "Poetics" 79: 101439, \doi{10.1016/j.poetic.2020.101439}

More publications from the project: see \url{https://literaryquality.huygens.knaw.nl/?page_id=588}

}

\seealso{
\code{\link{books}}, \code{\link{reviews}}, \code{\link{respondents}}, \code{\link{explain}}, \code{\link{make.table}}
}

