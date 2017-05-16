#
# Sammanställaning av data

cfg <- crp::read_crp_config()

NKB_customer_test_path <- file.path(cfg$dropbox_path, 
                                    "NKB/Production_test/NKB_customer_test.Rproj")
Tolve_interaction_path <- file.path(cfg$dropbox_path, 
                                    "/NKB/Production_test/NKB_interaction_test/Interaction_test_data.Rdata")

load(NKB_customer_test_path)
load(Tolve_interaction_path)



