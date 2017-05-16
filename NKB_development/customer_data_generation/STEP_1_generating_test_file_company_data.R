#
# Generating test file for customer data

# Setting parameters
cfg <- crp::read_crp_config()

#
# Generting paths
# Loading path
NKB_SE_path <- file.path(cfg$dropbox_path, "/NKB/Production_data/NKB_SE.Rdata")
# Saving path
NKB_customer_test_path <- file.path(cfg$dropbox_path, "NKB/Production_test/NKB_customer_test.Rproj")

#
# Loading NKB_SE
load(NKB_SE_path)

#
#
# Selecting needed variables
NKB_customer_test <- dplyr::select(NKB_SE,
                                   ORG_ID,
                                   STMT_TO_DT,
                                   NBR_EMP,
                                   NBR_MO,
                                   NET_SALES)

#
# Setting git_hash for the new data
attr(NKB_customer_test, "git_hash") <- TolveNkb:::get_git_sha1()

#
# Saving smaller dataset
save(NKB_customer_test, file = NKB_customer_test_path, compression_level = 9)





  
  

  
  

