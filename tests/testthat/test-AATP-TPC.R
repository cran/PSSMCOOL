context("checking that the length of AATP_TPC feature vectors are equal to 400 and 420 respectively")

test_that("whether the AATP_TPC gives us the expected output",{
  ss<-AATP_TPC(system.file("extdata", "C7GQS7.txt.pssm", package="PSSMCOOL"))
  expect_equal(length(ss[[2]]),420)
})
