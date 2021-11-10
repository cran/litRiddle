# ---------------------------------------- # 
#       FIND DATASET                       #
# ---------------------------------------- # 


# Return the name of the dataset where a column can be found.

find.dataset = function(name = NULL){
    
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

    if(name == "book.id"){
        print(c("books", "reviews"))
    } else if(name == "respondent.id"){
        print(c("respondents", "reviews"))
    } else if(name %in% colnames(books)){
        print("books")
    } else if(name %in% colnames(respondents)){
        print("respondents")
    } else if(name %in% colnames(reviews)){
        print("reviews")
    } else {
        stop("This is not a valid column name. Please type <get.columns()> to see which column names exist.")
    }

}

