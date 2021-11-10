## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)


## ----warning = FALSE----------------------------------------------------------
library(litRiddle)

## -----------------------------------------------------------------------------
data(books)
data(respondents)
data(reviews)

## ----eval = FALSE-------------------------------------------------------------
#  books

## -----------------------------------------------------------------------------
books$title[1:10]

## -----------------------------------------------------------------------------
get.columns()

## -----------------------------------------------------------------------------
explain("books")
explain("reviews")
explain("respondents")

## -----------------------------------------------------------------------------
dat = combine.all(load.freq.table = FALSE)

## -----------------------------------------------------------------------------
dat = combine.all(load.freq.table = TRUE)

## -----------------------------------------------------------------------------
find.dataset("book.id")
find.dataset("age.resp")

## ----eval = FALSE-------------------------------------------------------------
#  get.columns()

## -----------------------------------------------------------------------------
make.table(table.of = 'age.resp')

## -----------------------------------------------------------------------------
make.table(table.of = 'age.resp', xlab = 'age respondent', 
           ylab = 'number of people', 
           title = 'Distribution of respondent age', 
           barcolor = 'red', barfill = 'white')

## -----------------------------------------------------------------------------
make.table2(table.of = 'age.resp', split = 'gender.resp')

## -----------------------------------------------------------------------------
make.table2(table.of = 'literariness.read', split = 'gender.author')

## -----------------------------------------------------------------------------
make.table2(table.of = 'age.resp', split = 'zipcode') 

## -----------------------------------------------------------------------------
make.table2(table.of = 'age.resp', split = 'gender.resp', 
            xlab = 'age respondent', ylab = 'number of people', 
            barcolor = 'purple', barfill = 'yellow')

## -----------------------------------------------------------------------------
make.table2(table.of = 'literariness.read', split = 'gender.author', 
            xlab = 'Overall literariness scores', 
            ylab = 'number of people', barcolor = 'black', 
            barfill = 'darkred')

## -----------------------------------------------------------------------------
dat.reviews = order.responses('readingbehavior')
str(dat.reviews)

## -----------------------------------------------------------------------------
dat.ratings = order.responses('bookratings')
str(dat.ratings)

## ----eval = FALSE-------------------------------------------------------------
#  help(books)
#  help(respondents)
#  help(reviews)
#  help(frequencies)
#  help(combine.all)
#  help(explain)
#  help(find.dataset)
#  help(get.columns)
#  help(make.table)
#  help(make.table2)
#  help(order.responses)
#  help(litRiddle) # for the general description of the package

