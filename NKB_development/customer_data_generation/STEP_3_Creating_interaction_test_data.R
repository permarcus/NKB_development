#
# Creating test interaction data
# 
library(lubridate)
# Setting parameters
cfg <- crp::read_crp_config()

#
# Generting paths
# Loading path
Brave_interaction_path <- file.path(cfg$dropbox_path, "/NKB/Production_test/NKB_interaction_test/Brave_interaction.csv")
Frida_interaction_path <- file.path(cfg$dropbox_path, "/NKB/Production_test/NKB_interaction_test/Frida_interaction.csv")
Jessica_interaction_path <- file.path(cfg$dropbox_path, "/NKB/Production_test/NKB_interaction_test/Jessica_interaction.csv")
Kajsa_interaction_path <- file.path(cfg$dropbox_path, "/NKB/Production_test/NKB_interaction_test/Kajsa_interaction.csv")
Luffsen_interaction_path <- file.path(cfg$dropbox_path, "/NKB/Production_test/NKB_interaction_test/Luffsen_interaction.csv")
Multi_interaction_path <- file.path(cfg$dropbox_path, "/NKB/Production_test/NKB_interaction_test/Multi_interaction.csv")
Nettan_interaction_path <- file.path(cfg$dropbox_path, "/NKB/Production_test/NKB_interaction_test/Nettan_interaction.csv")
Pernilla_interaction_path <- file.path(cfg$dropbox_path, "/NKB/Production_test/NKB_interaction_test/Pernilla_interaction.csv")
Poe_interaction_path <- file.path(cfg$dropbox_path, "/NKB/Production_test/NKB_interaction_test/Poe_interaction.csv")
Pongo_interaction_path <- file.path(cfg$dropbox_path, "/NKB/Production_test/NKB_interaction_test/Pongo_interaction.csv")
Stephani_interaction_path <- file.path(cfg$dropbox_path, "/NKB/Production_test/NKB_interaction_test/Stephani_interaction.csv")
Universal_interaction_path <- file.path(cfg$dropbox_path, "/NKB/Production_test/NKB_interaction_test/Universal_interaction.csv")
# Saving Path
Interaction_test_path <- file.path(cfg$dropbox_path, "/NKB/Production_test/NKB_interaction_test/Interaction_test_data.Rdata")

#
# Loading interaction data
Brave_interaction <- read.csv2(Brave_interaction_path)
Frida_interaction <- read.csv2(Frida_interaction_path)
Jessica_interaction <- read.csv2(Jessica_interaction_path)
Kajsa_interaction <- read.csv2(Kajsa_interaction_path)
Luffsen_interaction <- read.csv2(Luffsen_interaction_path)
Multi_interaction <- read.csv2(Multi_interaction_path)
Nettan_interaction <- read.csv2(Nettan_interaction_path)
Pernilla_interaction <- read.csv2(Pernilla_interaction_path)
Poe_interaction <- read.csv2(Poe_interaction_path)
Pongo_interaction <- read.csv2(Pongo_interaction_path)
Stephani_interaction <- read.csv2(Stephani_interaction_path)
Universal_interaction <- read.csv2(Universal_interaction_path)

#
# Adding buyer ID
Brave_interaction$buyer_id <- 1
Frida_interaction$buyer_id <- 2
Jessica_interaction$buyer_id <- 3
Kajsa_interaction$buyer_id <- 4
Luffsen_interaction$buyer_id <- 5
Multi_interaction$buyer_id <- 6
Nettan_interaction$buyer_id <- 7
Pernilla_interaction$buyer_id <- 8
Poe_interaction$buyer_id <- 9
Pongo_interaction$buyer_id <- 10
Stephani_interaction$buyer_id <- 11
Universal_interaction$buyer_id <- 12
  
#
# Adding product id  
Brave_interaction$product_id <- 1
Frida_interaction$product_id <- 1
Jessica_interaction$product_id <- 1 
Kajsa_interaction$product_id <- 1
Luffsen_interaction$product_id <- 1  
Multi_interaction$product_id <- 1
Nettan_interaction$product_id <- 1
Pernilla_interaction$product_id <- 1 
Poe_interaction$product_id <- 1
Pongo_interaction$product_id <- 1 
Stephani_interaction$product_id <- 1  
Universal_interaction$product_id <- 1 

#
# Add customer name ( to be exdluded for product, but in use for practical reasons)
#Brave_interaction$company_name <- "Brave"
#Frida_interaction$company_name <- "Frida"
#Jessica_interaction$company_name <- "Jessica"
#Kajsa_interaction$company_name <- "Kajsa"
#Luffsen_interaction$company_name <- "Luffsen"
#Multi_interaction$company_name <- "Multi"
#Nettan_interaction$company_name <- "Nettan"
#Pernilla_interaction$company_name <- "Pernilla" 
#Poe_interaction$company_name <- "Poe"
#Pongo_interaction$company_name <- "Pongo" 
#Stephani_interaction$company_name <- "Stephani"  
#Universal_interaction$company_name <- "Universal" 

#
# Changing type of to Date
Brave_interaction$date_from <- as.Date(Brave_interaction$date_from)
Frida_interaction$date_from <- as.Date(Frida_interaction$date_from) 
Jessica_interaction$date_from <-  as.Date(Jessica_interaction$date_from)  
Kajsa_interaction$date_from <- as.Date(Kajsa_interaction$date_from)
Luffsen_interaction$date_from <- as.Date(Luffsen_interaction$date_from) 
Multi_interaction$date_from <- as.Date(Multi_interaction$date_from) 
Nettan_interaction$date_from <- as.Date(Nettan_interaction$date_from) 
Pernilla_interaction$date_from <- as.Date(Pernilla_interaction$date_from) 
Poe_interaction$date_from <- as.Date(Poe_interaction$date_from) 
Pongo_interaction$date_from <- as.Date(Pongo_interaction$date_from) 
Stephani_interaction$date_from <- as.Date(Stephani_interaction$date_from)  
Universal_interaction$date_from <- as.Date(Universal_interaction$date_from) 

#
# Adding date to for test practice
Brave_interaction$date_to <- Brave_interaction$date_from + days(1)
Frida_interaction$date_to <- Frida_interaction$date_from + days(1)
Jessica_interaction$date_to <-  Jessica_interaction$date_from + days(1)
Kajsa_interaction$date_to <- Kajsa_interaction$date_from + days(1)
Luffsen_interaction$date_to <- Luffsen_interaction$date_from + days(1)
Multi_interaction$date_to <- Multi_interaction$date_from + days(1)
Nettan_interaction$date_to <- Nettan_interaction$date_from  + days(1)
Pernilla_interaction$date_to <- Pernilla_interaction$date_from + days(1)
Poe_interaction$date_to <- Poe_interaction$date_from + days(1)
Pongo_interaction$date_to <- Pongo_interaction$date_from + days(1)
Stephani_interaction$date_to <- Stephani_interaction$date_from + days(1)
Universal_interaction$date_to <- Universal_interaction$date_from + days(1)

#
# Combinig data to one dataframe
Tolve_interaction <- dplyr::bind_rows(Brave_interaction,
                                      Frida_interaction,
                                      Jessica_interaction,
                                      Kajsa_interaction,
                                      Luffsen_interaction,
                                      Multi_interaction,
                                      Nettan_interaction,
                                      Pernilla_interaction,
                                      Poe_interaction,
                                      Pongo_interaction,
                                      Stephani_interaction,
                                      Universal_interaction)

#
# Sorting to fulfill assertion
Tolve_interaction <- Tolve_interaction[, c(1,4,5,3,2,6)]

#
# Setting class for assertion
  Tolve_interaction$company_id <- as.character(Tolve_interaction$company_id)  
  Tolve_interaction$buyer_id <- as.integer(Tolve_interaction$buyer_id)
  Tolve_interaction$product_id <- as.integer(Tolve_interaction$product_id) 
  Tolve_interaction$sale_process_stage <- as.character(Tolve_interaction$sale_process_stage) 
  Tolve_interaction$date_from <- lubridate::as_date(Tolve_interaction$date_from)
  Tolve_interaction$date_to <- lubridate::as_date(Tolve_interaction$date_to) 

Tolve_interaction <- dplyr::as_data_frame(Tolve_interaction)  
  
#
# Adjusting to interaction data
Tolve_interaction <- TolveProspectingBot::interaction_data(Tolve_interaction)
  
#
# Saving Rdata file
save(Tolve_interaction, file = Interaction_test_path, compression_level = 9)

