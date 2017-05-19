#
#
# Generate discretized data

#
# Loading parameters
cfg <- crp::read_crp_config()
Tolve_path <- file.path("/Users/per.marcus/Documents/Tolve")

#
# Load path for NKB
#NKB_SE_path <- file.path(cfg$dropbox_path, "/NKB/Production_data/NKB_SE.Rdata")
NKB_customer_test_path <- file.path(cfg$dropbox_path, "/NKB/Production_test/NKB_customer_test.Rdata")

#
# Save path for disc data
#NKB_SE_DISC_path <- file.path(cfg$dropbox_path, "/NKB/Production_data/NKB_SE_DISC.Rdata")
NKB_SE_disc_test_path <- file.path(cfg$dropbox_path, "/NKB/Production_test/NKB_SE_TEST_disc.Rdata")

load(NKB_customer_test_path)

#
# Loading discretizartion functions
source(file.path(Tolve_path, "/tolve_data_cleaner_bot/production_scripts/Generating_disc_data/Discretization_functions.R"))

#
# Creating disc data 
NKB_SE_disc_test <- NKB_customer_test

#
# Discretizing data
NKB_SE_disc_test$NET_SALES <- NKB_cut_number(NKB_customer_test$NET_SALES, number_groups = 9)
NKB_SE_disc_test$NBR_EMP <- NKB_cut(NKB_customer_test$NBR_EMP, cut_vector = c(0,3,8,15,50,200,Inf))


NKB_SE_disc_test <- TolveProspectingBot::company_data(NKB_SE_disc_test)

#
# Setting git hash
attr(NKB_SE_disc_test, "git_hash") <- TolveNkb:::get_git_sha1()

#
# Saving discretized data
save(NKB_SE_disc_test, file = NKB_SE_disc_test_path, compression_level = 9)






