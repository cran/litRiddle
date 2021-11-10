# -------------------------------------- # 
#  	ORDER RESPONSES			             # 
# -------------------------------------- #

# function that transforms the survey responses into ordered factors


order.responses <- function(bookratings.or.readingbehavior = NULL){

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
    
    
    if(bookratings.or.readingbehavior == "bookratings"){
        dat = reviews
        cols1 = c(3,5)
        cols2 = c(4,6)
        dat[,cols1] = as.data.frame(lapply(dat[,cols1], function(X){ordered(X,
            levels = 1:7, 
            labels = c("very bad", "bad", "a bit bad", 
            "neutral", "a bit good", "good", 
        "very good"))}))
        dat[,cols2] = as.data.frame(lapply(dat[,cols2], function(X){ordered(X,
            levels = 1:7, 
            labels = c("absolutely not literary", "non-literary", 
            "not very literary", "between literary and non-literary",
        "a bit literary", "literary", "very literary"))}))
        
    } else if(bookratings.or.readingbehavior == "readingbehavior"){
        dat = respondents
        cols = 8:24
        dat[,cols] = as.data.frame(lapply(dat[,cols], function(X){ordered(X,
            levels = 1:5, 
            labels = c("completely disagree", "disagree", 
        "neutral", "agree", "completely agree"))}))
        
    } else {
        stop("Please type in either <'bookratings'> or <'readingbehavior'>")
    }
    
    dat = as_tibble(dat)
    return(dat)
    
}


# levels "quality.read" and "quality.notread": "very bad", "bad", "a bit bad", "neutral", "a bit good", "good", "very good", NA.
# levels "literariness.read" and "literariness.notread": "absolutely not literary", "non-literary", "not very literary", 
#         "between literary and non-literary","a bit literary", "literary", "very literary", NA.

# levels statements 4 / 12: "completely disagree", "disagree", "neutral", "agree", "completely agree", "NA"


