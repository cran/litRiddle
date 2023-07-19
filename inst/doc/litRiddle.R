## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)


## ----warning = FALSE----------------------------------------------------------
library(litRiddle)

## -----------------------------------------------------------------------------
data(books)
data(respondents)
data(reviews)
data(motivations)
data(frequencies)

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
explain("motivations")
explain("frequencies")

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

## -----------------------------------------------------------------------------
rownames(frequencies)[10:20]

## -----------------------------------------------------------------------------
frequencies["Appel_Weerzin",][1:10]

## -----------------------------------------------------------------------------
books[books["short.title"]=="Appel_Weerzin",]

## -----------------------------------------------------------------------------
data(motivations)
head(motivations, 15)

## -----------------------------------------------------------------------------
# We're importing `dplyr` to use `tibble` so we can 
# show very large tables somewhat nicer.
suppressMessages(library(dplyr))  

mots = motivations.text()
tibble(mots)

## -----------------------------------------------------------------------------
mots_hhhh <- merge(x = books[books["book.id"]==46,], y = mots, by = "book.id", all.x = TRUE)
tibble(mots_hhhh)

## -----------------------------------------------------------------------------
print(tibble(mots_hhhh[,"text"]), n = 40)

## -----------------------------------------------------------------------------
mots_hhhh = merge(x = books[books["book.id"] == 46, c("book.id", "author", "title")], y = mots[, c("book.id", "respondent.id", "text")], by = "book.id", all.x = TRUE)
tibble(mots_hhhh)

## -----------------------------------------------------------------------------
tibble(merge(x = mots_hhhh, y = reviews, by = c("book.id", "respondent.id"), all.x = TRUE))

## -----------------------------------------------------------------------------
reviews[ reviews["respondent.id"] == 1022 & reviews["book.id"] == 46, ]

## -----------------------------------------------------------------------------
toks = motivations  # Remmber: that is a *token* table, one token + lemma + POS tag per row.
head(table(toks$lemma, toks$upos), n = 30)

## -----------------------------------------------------------------------------
# filter out tokens that do not start with at least one word character
# we use regular expression "\w+" which means "more than one word character", 
# the added backslash prevents R from interpreting the backslash as an
# escape character. 
mots = filter(motivations, grepl('\\w+', lemma))

# create a data frame out of a table of raw frequencies.
# Look up 'table function' in R documentation. 
mots = data.frame(table(mots$lemma, mots$upos))

# use interpretable column names
colnames(mots) = c("lemma", "upos", "freq")

# select only useful information, i.e. those lemma+pos combinations 
# that appear more than 0 times
mots = mots[mots['freq'] > 0, ]

# sort from most used to least used
mots = mots[order(mots$freq, decreasing = TRUE), ]

# finally show as a nicer looking table
tibble(mots)

## -----------------------------------------------------------------------------
mots[mots["lemma"] == "boek", ]

## -----------------------------------------------------------------------------
# First we find the motivation IDs from the books where this happens.
boekx = motivations[motivations["lemma"] == "boek" & motivations["upos"] == "X", ]
boekx

## -----------------------------------------------------------------------------
mots_text = motivations.text()

## -----------------------------------------------------------------------------
boekx_mots_text =  merge( x = boekx, y = mots_text, by = "motivation.id", all.x = TRUE)

## -----------------------------------------------------------------------------
tibble(boekx_mots_text[ , c( "book.id.x", "respondent.id.x", "text")])

## -----------------------------------------------------------------------------
boekx_mots_text[3, "text"]

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

