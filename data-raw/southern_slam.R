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
#
# The csv stored in data-raw stores the time in UTC,
# but to be consistent with what was actually on the
# website, this script uses the local timezone (ACST)
# for the tournament.

southern_slam <- readr::read_csv(
  here::here("data-raw", "southern_slam.csv")
)
southern_slam$time <- lubridate::with_tz(
  southern_slam$time,
  "Australia/Adelaide"
)
usethis::use_data(southern_slam, overwrite = TRUE)
