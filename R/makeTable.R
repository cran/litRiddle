# -------------------------------------- # 
#  	MAKE TABLE 	                         # 
# -------------------------------------- #

# make a table of frequency counts for one variable, and plot a histogram of the results.

make.table <- function(table.of = NULL, 
                       plot = TRUE, 
                       xlab = table.of, 
                       ylab = "count", 
                       title = table.of,
                       barcolor = "grey", 
                       barfill = "darkgrey"){
#
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



    if (table.of %in% colnames(reviews)){
        dat.x = as.data.frame(reviews[,table.of])
        table.x = table(reviews[,table.of])
    } else if (table.of %in% colnames(respondents)) {
        dat.x = as.data.frame(respondents[,table.of])
        table.x = table(respondents[,table.of])
    } else if (table.of %in% colnames(books)){
        dat.x = as.data.frame(books[,table.of])
        table.x = table(books[,table.of])
    } else {
        message("Please provide a valid column name. The column names can be printed on the screen by typing 'print.columns()' in the console.")
    }
  
    # some visuals
    if(exists("table.x") & plot == TRUE){
    
        g = ggplot(dat.x, aes(x = dat.x[, 1]))
        g = g + geom_bar(colour = barcolor, fill = barfill)
        g = g + xlab(xlab) + ylab(ylab) + ggtitle(title)
        plot(g)
    
        return(table.x)
    
    } else if(exists("table.x")){
        return(table.x)
    } 
}

