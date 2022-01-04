context("checking that the length of aadp_pssm feature vector is equal to 420")

test_that("whether the aadp_pssm function gives us the expected output",{
  ss<-aadp_pssm(system.file("extdata","C7GQS7.txt.pssm",package="PSSMCOOL"))
  expect_equal(length(ss),420)
})
