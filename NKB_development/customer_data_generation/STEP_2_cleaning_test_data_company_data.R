#
# Cleaning test data
# 
library(dplyr)
library(lubridate)
# Setting parameters
cfg <- crp::read_crp_config()
#
# Generting paths
# Loading path
NKB_customer_test_raw_path <- file.path(cfg$dropbox_path, "NKB/Production_test/NKB_customer_test_raw.Rdata")
# Saving path
NKB_customer_test_path <- file.path(cfg$dropbox_path, "NKB/Production_test/NKB_customer_test.Rdata")
#
# Loading NKB_SE
load(NKB_customer_test_raw_path)

#
# Removing data without date specification
NKB_customer_test <- dplyr::filter(NKB_customer_test, !is.na(NKB_customer_test$STMT_TO_DT))
NKB_customer_test <- NKB_customer_test %>% 
                     group_by(ORG_ID) %>% 
                     arrange(desc(STMT_TO_DT))

#
# Adding day characters
NKB_customer_test$STMT_TO_DT <- paste0(NKB_customer_test$STMT_TO_DT, "-01")
#
# Changing type to date
NKB_customer_test$STMT_TO_DT <- as.Date(NKB_customer_test$STMT_TO_DT)

#
# Setting company_from and company_to
NKB_customer_test$COMPANY_TO <- NKB_customer_test$STMT_TO_DT + months(1) - days(1)
NKB_customer_test$COMPANY_FROM <- NKB_customer_test$STMT_TO_DT - months(NKB_customer_test$NBR_MO) + months(1)

#
# Save customer data test file
save(NKB_customer_test, file = NKB_customer_test_path, compression_level = 9)

