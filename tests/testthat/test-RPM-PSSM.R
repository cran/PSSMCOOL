context("checking that the length of RPM_PSSM feature vector is equal to 400")

test_that("whether the RPM_PSSM gives us the expected output",{
  ss<-RPM_PSSM(system.file("extdata", "C7GQS7.txt.pssm", package="PSSMCOOL"))
  expect_equal(length(ss),400)
})
