## ------------------------------------------------------- ##
##           print column names
## ------------------------------------------------------- ##

# function that creates a list of all the column names from all three datasets
get.columns <- function() {

    # a hack to silence package warnings  
    data("books", package = "litRiddle", envir = environment()) 
    books <- get("books", envir = environment()) 
    #
    data("respondents", package = "litRiddle", envir = environment()) 
    respondents <- get("respondents", envir = environment()) 
    #
    data("reviews", package = "litRiddle", envir = environment()) 
    reviews <- get("reviews", envir = environment()) 
    #
    
    colnames.books = colnames(books)
    colnames.resp = colnames(respondents)
    colnames.reviews = colnames(reviews)
    columns = list(books = colnames.books, respondents = colnames.resp, reviews = colnames.reviews)
    
    return(columns)
}

