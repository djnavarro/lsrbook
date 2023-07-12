# code to prepare the southern_slam data

# The primary data source are the results from the
# 2022 Great Southern Slam roller derby tournament:
# Retrieved from http://greatsouthernslam.com.au/
# on 12-07-2023. Transcription to csv was partly
# assisted by the Flat Track Stats website, which
# includes most of the results of the original
# tournament and also lists the informal names for
# teams in a more detail than the official site:
# http://flattrackstats.com/tournaments/114308.
# Retrieved on 12-07-2023.
#
# There are some mismatches between the scores and
# bouts listed across the two sites. When conflicts
# were detected, the official Great Southern Slam
# results were assumed to be canonical.
#
# The southern_slam data frame includes all listed
# bouts from the tournament, except for the two
# challenge bouts.

southern_slam <- readr::read_csv(
  here::here("data-raw", "southern_slam.csv")
)
usethis::use_data(southern_slam, overwrite = TRUE)
