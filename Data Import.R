path <- system.file("extdata", package = "dslabs")
filename  <- "fertility-two-countries-example.csv"
fullpath <- file.path(path, filename)
file.copy(fullpath, getwd())
list.files(path)

