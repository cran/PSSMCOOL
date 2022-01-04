context("checking that the length of PSSM_CC feature vector is equal to 3800")

test_that("whether the PSSM_CC function gives us the expected output",{
  ss<-pssm_cc(system.file("extdata","C7GQS7.txt.pssm",package="PSSMCOOL"))
  expect_equal(length(ss),3800)
})
