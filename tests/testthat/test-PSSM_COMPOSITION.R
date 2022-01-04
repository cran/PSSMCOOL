context("checking that the length of pssm_composition feature vector is equal to 400")

test_that("whether the pssm_composition function gives us the expected output",{
  ss<-pssm_composition(system.file("extdata","C7GQS7.txt.pssm",package="PSSMCOOL"))
  expect_equal(length(ss),400)
})
