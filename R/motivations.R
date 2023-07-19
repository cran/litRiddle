# ------------------------------------- # 
#  	VIEWS ON MOTIVATIONS                # 
# ------------------------------------- #

motivations.sentences <- function() {

    # a hack to silence package warnings  
    data("motivations", package = "litRiddle", envir = environment()) 
    motivations <- get("motivations", envir = environment()) 

    mots <- by( 
        motivations, 
        c( 
            motivations['motivation.id'], 
            motivations['sentence.id'] 
        ), 
        function(mot) { 
            c( 
                mot['motivation.id'],
                mot['book.id'],
                mot['respondent.id'],
                mot['sentence.id'], 
                paste( mot[['token']], collapse=" " ) 
            ) 
        } 
    )
    
    mots <- as.data.frame( do.call( "rbind", mots ) )

    colnames(mots) <- c( 
        "motivation.id", 
        "book.id", 
        "respondent.id", 
        "sentence.id", 
        "sentence" 
    )

    mots["sentence"] <- unlist( mots["sentence"] )
    mots["motivation.id"] <- sapply( mots[,"motivation.id"], max )
    mots["book.id"] <- sapply( mots[,"book.id"], max )
    mots["respondent.id"] <- sapply( mots[,"respondent.id"], max )
    mots["sentence.id"] <- sapply( mots[,"sentence.id"], max )

    mots <- mots[ order( mots$motivation.id ), ]

    return( mots )

}

motivations.text <- function() {

    # a hack to silence package warnings  
    data("motivations", package = "litRiddle", envir = environment()) 
    motivations <- get("motivations", envir = environment()) 

    mots <- by( 
        motivations, 
        motivations['motivation.id'], 
        function(mot) { 
            c( 
                mot['motivation.id'],
                mot['book.id'],
                mot['respondent.id'],
                paste( mot[['token']], collapse=" " ) 
            ) 
        } 
    )
    
    mots <- as.data.frame( do.call( "rbind", mots ) )

    colnames(mots) <- c( 
        "motivation.id", 
        "book.id", 
        "respondent.id", 
        "text" 
    )

    mots["text"] <- unlist( mots["text"] )
    mots["motivation.id"] <- sapply( mots[,"motivation.id"], max )
    mots["book.id"] <- sapply( mots[,"book.id"], max )
    mots["respondent.id"] <- sapply( mots[,"respondent.id"], max )

    mots <- mots[ order( mots$motivation.id ), ]
    
    return( mots )

}
