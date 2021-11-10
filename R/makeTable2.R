# --------------------------------------------------- #
# 	MAKE TABLE OF X SPLIT BY Y		      #
# --------------------------------------------------- #

# Makes a table of a variable x, and will split this table by variable y.


make.table2 = function(table.of = NULL, 
                       split = NULL, 
                       plot = TRUE, 
                       xlab = table.of, 
                       ylab = "counts",
                       title = table.of,
                       barcolor = "grey", 
                       barfill = "darkgrey"){
  

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

    # combine all to make sure arguments match in numbers of rows
    dat = combine.all()
    dat = as.data.frame(dat)  # to make referring to variable column names possible
  
    # if the split variable has more than 31 unique values (number of unique week numbers present in the dataset), 
    # do not continue:
    if (length(unique(dat[,split])) > 31) {
        message("The 'split-by' variable has many unique values, which will ",
                "make the output \nvery hard to process. Please provide",
                "a 'split-by' variable that contains \nless unique values.")
    } else {
        col1 = dat[, table.of]
        col2 = dat[, split]
        dat = data.frame(col1, col2)
        table2 = table(dat[, 2], dat[, 1])
    
        # some visuals
        if(exists("table2") & plot == TRUE){
      
            g = ggplot(dat, aes(x = dat[,1]))
            g = g + facet_wrap(~dat[,2], scales = "free_x")
            g = g + geom_bar(colour = barcolor, fill = barfill)
            g = g + xlab(xlab) + ylab(ylab) + ggtitle(title)
            plot(g)
            
            # how to return two things?
            return(table2)
      
        } else if(exists("table2")){
            return(table2)
        }
    }
}


