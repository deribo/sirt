## File Name: dimproper.R
## File Version: 0.04

###################################################
# improper density which is constant to 1
dimproper <- function(x){
    N <- length(x)
    dx <- rep(1,N)
    return(dx)
}
###################################################
