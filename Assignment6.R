# Mike Lennon Week 6 Assignment



#install.packages("devtools")
#library(devtools)
#build_github_devtools()

#### Restart R before continuing ####
#install.packages("devtools.zip", repos = NULL)

# Remove the package after installation
#unlink("devtools.zip")

require(devtools)
#library(rvest)
#install_github("hadley/rvest") # need to require the devtools package for this to work

library(rvest)

##### Assignment   #####
# Your assignment: Find a web page from a different site, and use the rvest package functions to pull at 
# least one piece of information from that web page.
ruckus<- html("http://www.ruckusbrewing.com/store")
title <- ruckus %>% 
  html_nodes("title") %>%
  html_text()
title

# one way to get paragraph from home page
homeinfo <- html("http://www.ruckusbrewing.com/")
paragraph <- homeinfo %>%
  html_nodes("p") %>%
  html_text()
paragraph


#another way to get paragraph from home page
homeinfo <- html("http://www.ruckusbrewing.com/")
paragraph1 <- homeinfo %>%
  html_nodes(".home-text ") %>%
  html_text()
paragraph1


# Address for their facebook page link
address <- homeinfo %>%
  html_nodes(".facebook-btn") %>%
  html_attr("href")
address

##### Question 1 #####

# The  results matched so the install was successful.
# lego_movie <- html("http://www.imdb.com/title/tt1490017/")
# 
# rating <- lego_movie %>% 
#   html_nodes("strong span") %>%
#   html_text() %>%
#   as.numeric()
#   rating
#> [1] 7.9
# 
# cast <- lego_movie %>%
#   html_nodes("#titleCast .itemprop span") %>%
#   html_text()
# cast
# #>  [1] "Will Arnett"     "Elizabeth Banks" "Craig Berry"     "Alison Brie"    
# #>  [5] "David Burrows"   "Anthony Daniels" "Charlie Day"     "Amanda Farinos" 
# #>  [9] "Keith Ferguson"  "Will Ferrell"    "Will Forte"      "Dave Franco"    
# #> [13] "Morgan Freeman"  "Todd Hansen"     "Jonah Hill"     
# 
# poster <- lego_movie %>%
#   html_nodes("#img_primary img") %>%
#   html_attr("src")
# poster
# #> "http://ia.media-imdb.com/images/M/....jpg"










