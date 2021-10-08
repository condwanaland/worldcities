## code to prepare `DATASET` dataset goes here

worldcities <- read.csv("data-raw/worldcities.csv")

worldcities$city <- NULL
worldcities$admin_name <- textclean::replace_non_ascii(worldcities$admin_name)
worldcities$country <- textclean::replace_non_ascii(worldcities$country)

names(worldcities)[names(worldcities) == "city_ascii"] <- "city"


usethis::use_data(worldcities, overwrite = TRUE)
