roll2 <- function(faces, number_of_dice) {
  dice <- sample(faces, size = number_of_dice, replace = TRUE)
  sum(dice)
}


roll2(faces = 1:2, number_of_dice = 6)

#-------------------------------------------------------------------

calc_EOQ <- function(D) {
  K <- 5
  h <- 0.25
  sqrt(2*D*K/h)
}

calc_EOQ(D = 4000)

#==================================================================
roll3 <- function(faces = 1:6, number_of_dice = 1) {
  dice <- sample(x = faces, size = number_of_dice, 
                 replace = TRUE, 
                 prob = c(0.1, 0.1, 0.1, 0.1, 0.1, 0.5))
  sum(dice)
}

# You can run the function 100 times, store the results and plot a histogram to varify your function
results <- replicate(n = 100, expr = roll3(), simplify=TRUE)
hist(results)