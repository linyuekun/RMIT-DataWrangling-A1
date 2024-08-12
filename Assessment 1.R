
## Step 1 ----

getwd() # Check working directory
library(readr) # Load the package readr
library(dplyr)

## Step 2 ----

data_vic <- read_csv("Fluoridation by postcode - Sheet1.csv") #Import data and assign it to a variable called "data_vic". We decided to use readr package instead od Base R for it will be faster.
View(data_vic) # Open the data frame in another window
head(data_vic) # Check the first few observations
head(data_vic, n = 10) # Check from the first observation up to the row we want to see by assigning n
tail(data_vic) # Check the last few observations
tail(data_vic, n = 10) # Check from the first observation up to the row we want to see by assigning n
summary(data_vic)

## Step 3 ----
# Download the dataset from https://www.data.vic.gov.au/

## Step 4 ----
str(data_vic) # Check the dimension of the data frame, look at the number of observations, variables, name and class of variable
colnames(data_vic) # Check the column names
names(data_vic)[6] <- "company" # Rename the column "water_company" to "company"

class(data_vic$cartodb_id)
typeof(data_vic$cartodb_id)

class(data_vic$melbourne)
typeof(data_vic$melbourne)

class(data_vic$postcode)
typeof(data_vic$postcode)

class(data_vic$id)
typeof(data_vic$id)

class(data_vic$fluoride_level)
typeof(data_vic$fluoride_level)

class(data_vic$company)
typeof(data_vic$company)

class(data_vic$townsuburb)
typeof(data_vic$townsuburb)

class(data_vic$lat)
typeof(data_vic$lat)

class(data_vic$lon)
typeof(data_vic$lon)

levels(as.factor(data_vic$postcode))
levels(as.factor(data_vic$fluoride_level))
levels(as.factor(data_vic$company))
levels(as.factor(data_vic$townsuburb))

matrix_a <- matrix(data_vic$cartodb_id[1:10], nrow = 10, ncol = 1)
matrix_b <- matrix(data_vic$melbourne[1:10], nrow = 10, ncol = 1)
matrix_c <- matrix(data_vic$postcode[1:10], nrow = 10, ncol = 1)
matrix_d <- matrix(data_vic$id[1:10], nrow = 10, ncol = 1)
matrix_e <- matrix(data_vic$fluoride_level[1:10], nrow = 10, ncol = 1)
matrix_f <- matrix(data_vic$company[1:10], nrow = 10, ncol = 1)
matrix_g <- matrix(data_vic$townsuburb[1:10], nrow = 10, ncol = 1)
matrix_h <- matrix(data_vic$lat[1:10], nrow = 10, ncol = 1)
matrix_i <- matrix(data_vic$lon[1:10], nrow = 10, ncol = 1)

matrix_vic <- cbind(matrix_a, matrix_b, matrix_c, matrix_d, matrix_e, matrix_f, matrix_g, matrix_h, matrix_i)
colnames(matrix_vic) <- c("cartodb_id", "melbourne", "postcode", "id",
                          "fluoride_level", "company", "townsuburb", "lat", "lon")
rownames(matrix_vic) <- c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10")
str(matrix_vic)
head(matrix_vic)
class(matrix_vic)