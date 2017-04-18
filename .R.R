
# functions

# add product category function (add_prod_cat)

#add_prod_cat <- function(x, y) {
#    if(x== "p")
#      y %>% mutate(product_category = "Smartphone")
#    else break
#     }
#add_prod_cat(refine_dplyr$product_code, refine_dplyr)

# import csv
refine <- read.csv("refine_original.csv")

# create  tbl class file
refine_dplyr = tbl_df(refine)


# convert company to lowercase
refine_dplyr = mutate(refine_dplyr, clean_company = tolower(company))


# identify distinct company names
#distinct(select(refine_dplyr, product_code))

# clean company name (correct names): philips, akzo, van houten and unilever

# phillips key = ps
# akzo key = ak
# van houten key = van
# unilever key = ver

refine_dplyr$clean_company <- gsub(glob2rx("*ps*"),"phillips",refine_dplyr$clean_company)
refine_dplyr$clean_company <- gsub(glob2rx("*ak*$"),"akzo",refine_dplyr$clean_company)
refine_dplyr$clean_company <- gsub(glob2rx("*van*$"),"van houten",refine_dplyr$clean_company)
refine_dplyr$clean_company <- gsub(glob2rx("^*ver*"),"unilever",refine_dplyr$clean_company)

# practive remove 'company' column - commenting out as not stated to remove

#refine_dplyr <- 
#  refine_dplyr %>% 
#    select(-company)

# sepearate product and code number - two new columns: product_code product_number

refine_dplyr <- refine_dplyr %>% 
  separate(Product.code...number, c("product_code", "product_number"), sep = "-")

# add product categories
# creating temp_df dataframe out of temp_prod_code and temp_prod_cat vectors, going to try to join on product_code
# probably could have used group by as well

temp_prod_code <- c("p","x","v","q")
temp_prod_cat  <- c("Smartphone", "Laptop", "TV", "Tablet")
temp_df <- tbl_df(data_frame(temp_prod_code, temp_prod_cat))

# join on product code
refine_dplyr <- inner_join(refine_dplyr, temp_df, by = c("product_code" = "temp_prod_code"))

# rename temp_prod_cat column
refine_dplry <- rename(refine_dplyr, product_category = temp_prod_cat)

# create sinlge address field

refine_dplyr <-
  refine_dplry %>% 
  unite(address, address, city, country, sep = ", ")

# adding dummy variables

#refine_dplyr %>% 
# mutate(company_philips = ifelse)

refine_dplyr <-
  refine_dplyr %>% 
  mutate(company_phillips = ifelse(clean_company == "phillips", 1, 0),
         company_akzo = ifelse(clean_company == "akzo", 1, 0), 
         company_van_houten = ifelse(clean_company == "van houten", 1, 0),
         company_unilever = ifelse(clean_company == "unilever", 1, 0),
         product_smartphone = ifelse(product_category == "Smartphone", 1, 0),
         product_tv = ifelse(product_category == "TV", 1, 0),
         product_laptop = ifelse(product_category == "Laptop", 1, 0),
         product_tablet = ifelse(product_category == "Tablet", 1, 0))


print(refine_dplyr)
View(refine_dplyr)         
