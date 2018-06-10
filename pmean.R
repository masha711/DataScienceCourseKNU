pmean <- function(directory, pollutant, id=1:332){
  filenames <- sprintf("%03d.csv", id)
  filenames <- file.path(directory, filenames)
  my_frame <- lapply(filenames, read.csv)
  data_frame_list <- do.call("rbind", my_frame)
  mean(data_frame_list[[pollutant]], na.rm = TRUE)
}

complete <- function(directory, id){
  filenames <- sprintf("%03d.csv", id)
  filenames <- file.path(directory, filenames)
  my_frame <- lapply(filenames, read.csv)
  coc <- lapply(my_frame, complete.cases)
  coc_sum <- lapply(coc, sum)
  data.frame(id = id, nobs = I(coc_sum))
}

corr <- function(directory, threshold=0){
  filenames <- list.files(directory, pattern="*.csv", full.names=TRUE)
  my_frame <- lapply(filenames, read.csv)
  result <- c()
  for (df in my_frame){
    if (sum(complete.cases(df)) > threshold){
      result <-c(result, cor(df[['sulfate']], df[['nitrate']], use='pairwise.complete.obs'))
    }
  }
  return(result)
}
