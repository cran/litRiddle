

dummy.function = function() {


## ------------------------------------------------------- ##
##           print column names
## ------------------------------------------------------- ##

# function that creates a list of all the column names from all three datasets


## Usage

# Use this function to print the names of all available columns
# Don't forget the parentheses at the end of the function!
get.columns()








# ----------------------------------------------- # 
#         COMBINE ALL                             #
# ----------------------------------------------- #

# Function to combine all information of the survey, reviews, and books into one big dataframe
# The user can specify whether or not s/he want to also load the freqTable with the frequency
# counts of the word n-grams of the books. Default = FALSE. 


## Usage 

# combine and load all data from the books, respondents and reviews into 
# a new dataframe (tibble format)
dat = combine.all(load.freq.table = FALSE)

# combine and load all data from the books, respondents and reviews into 
# a new dataframe (tibble format), and additionally also load the frequency
# table of all word 1grams of the corpus used. 
dat = combine.all(load.freq.table = TRUE)








# ------------------------------------- #
#          explain variables            #
# ------------------------------------- #


# Function that lists an short explanation of what the different column names refer to
# and what their levels consist of.


## Usage
explain('books')
explain('reviews')
explain('respondents')








# ---------------------------------------- # 
#       FIND DATASET                       #
# ---------------------------------------- # 


# Return the name of the dataset where a column can be found.


## Usage
find.dataset('book.id')
find.dataset('age.resp')
find.dataset('wrong.column.name')







# -------------------------------------- # 
#  	MAKE TABLE 	                 # 
# -------------------------------------- #

# make a table of frequency counts for one variable, and plot a histogram of the results.


## Usage 

# print column names to see which variables you can choose from:
get.columns()

# don't forget to put parentheses around the variable name!
make.table(table.of = 'age.resp')

# You can also adjust the x label, y label, title, and colors. Don't forget to use parentheses!
make.table(table.of = 'age.resp', xlab = 'age respondent', ylab = 'number of people', 
           title = 'Distribution of respondent age', barcolor = 'red', barfill = 'white')


           






# --------------------------------------------------- #
# 	MAKE TABLE OF X SPLIT BY Y		      #
# --------------------------------------------------- #

# Makes a table of a variable x, and will split this table by variable y.



## Usage

# print column names to see which variables you can choose from:
get.columns()

# don't forget to put parentheses around the variable name!
make.table2(table.of = 'age.resp', split = 'gender.resp')
make.table2(table.of = 'literariness.read', split = 'gender.author')

# Note that you can only provide an argument to the 'split' variable that has less than 31 unique 
# values, to avoid uninterpretable outputs:
make.table2(table.of = 'age.resp', split = 'zipcode') 

# You can also adjust the x label, y label, title, and colors. Don't forget to use parentheses!
make.table2(table.of = 'age.resp', split = 'gender.resp', xlab = 'age respondent', ylab = 'number of people', 
            barcolor = 'purple', barfill = 'yellow')
make.table2(table.of = 'literariness.read', split = 'gender.author', xlab = 'Overall literariness scores', 
            ylab = 'number of people', barcolor = 'black', barfill = 'darkred')








# -------------------------------------- # 
#  	ORDER RESPONSES			                 # 
# -------------------------------------- #

# function that transforms the survey responses into ordered factors


# levels "quality.read" and "quality.notread": "very bad", "bad", "a bit bad", "neutral", "a bit good", "good", "very good", NA.
# levels "literariness.read" and "literariness.notread": "absolutely not literary", "non-literary", "not very literary", 
#         "between literary and non-literary","a bit literary", "literary", "very literary", NA.

# levels statements 4 / 12: "completely disagree", "disagree", "neutral", "agree", "completely agree", "NA"


## Usage

# Use either 'bookratings' or 'readingbehavior' to specify which of the survey questions needs to be 
# changed into ordered factors. Don't forget to use parentheses!

# to create a data frame with ordered factor levels of the questions on reading behavior
dat.reviews = order.responses('readingbehavior')
str(dat.reviews)

# to create a data frame with ordered factor levels of the book ratings:
dat.ratings = order.responses('bookratings')
str(dat.ratings)


# likert excluded so far
# see here: https://github.com/jbryer/likert






}




