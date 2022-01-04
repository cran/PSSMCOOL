context("checking that the length of EDP_EEDP_MEDP feature vectorS is equal to 20,400,420,respectively")

test_that("whether the EDP_EEDP_MEDP gives us the expected output",{
  ss<-EDP_EEDP_MEDP(paste0(system.file("extdata",package="PSSMCOOL"),"/C7GS61.txt.pssm"))
  expect_equal(length(ss[[3]]),420)
})

