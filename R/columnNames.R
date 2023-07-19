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
    data("motivations", package = "litRiddle", envir = environment()) 
    motivations <- get("motivations", envir = environment()) 
    #
    
    colnames.books = colnames(books)
    colnames.resp = colnames(respondents)
    colnames.reviews = colnames(reviews)
    colnames.motivations = colnames(motivations)
    columns = list(books = colnames.books, respondents = colnames.resp, reviews = colnames.reviews, motivations=colnames.motivations)
    
    return(columns)
}

