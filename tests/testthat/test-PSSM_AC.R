context("checking that the length of PSSM_AC feature vector is equal to 200")

test_that("whether the PSSM_AC function gives us the expected output",{
  ss<-pssm_ac(system.file("extdata","C7GQS7.txt.pssm",package="PSSMCOOL"))
  expect_equal(length(ss),200)
})
