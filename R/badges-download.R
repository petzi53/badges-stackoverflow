################################################################################
# Download badges data from Stack Overflow API
#
# see for more information: http://api.stackexchange.com/docs
#
# INPUT:    from Stack Overflow API
# OUTPUT:   data-raw/badges-raw.rds
# USAGE:    source("R/badges-download.R")
# PACKAGES: stackr
################################################################################

library(stackr)
# filter = `!bDRfcxV7NXNXK6`
#           includes: badge.description
#           excludes: badge_type, link, shallow_user

badges <- stack_badges(special = "name", pagesize = 100, filter = "!bDRfcxV7NXNXK6")
saveRDS(badges, file = "data-raw/badges-raw.rds")
