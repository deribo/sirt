## File Name: sirt_remove_list_entries.R
## File Version: 0.02

sirt_remove_list_entries <- function(list, rem)
{
    NR <- length(rem)
    if (NR>0){
        for (rr in rem){
            list[[rr]] <- NULL
        }
    }
    return(list)
}
