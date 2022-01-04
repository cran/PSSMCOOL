context("checking that the length of dpc_pssm feature vector is equal to 400")

test_that("whether the dpc_pssm function gives us the expected output",{
  ss<-dpc_pssm(system.file("extdata","C7GQS7.txt.pssm",package="PSSMCOOL"))
  expect_equal(length(ss),400)
})
