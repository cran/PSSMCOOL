context("checking that the length of aac_pssm feature vector is equal to 20")

test_that("whether the aac_pssm function gives us the expected output",{
  ss<-aac_pssm(system.file("extdata","C7GQS7.txt.pssm",package="PSSMCOOL"))
  expect_equal(length(ss),20)
})
