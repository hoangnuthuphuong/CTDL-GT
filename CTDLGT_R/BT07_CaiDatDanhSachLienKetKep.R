lst <- list(1, 7, 0, 9, 55)    # a list of 5 items
lst <- vector("list", 20) 
lst[[1]] <- 1
lst[[20]] <- 20  # lst now contains 1, NULL, ..., NULL, 20
lst
