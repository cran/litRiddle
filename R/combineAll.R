# ----------------------------------------------- # 
#         COMBINE ALL                             #
# ----------------------------------------------- #

# Function to combine all information of the survey, reviews, and books into one big dataframe
# The user can specify whether or not s/he want to also load the freqTable with the frequency
# counts of the word n-grams of the books. Default = FALSE. 


combine.all <- function(load.freq.table = FALSE){

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

    dat = inner_join(reviews, books)
    dat = inner_join(dat, respondents)
    dat = as_tibble(dat)
    
    return(dat)

}

