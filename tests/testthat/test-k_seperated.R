context("checking that the length of k_separated_bigrams_pssm feature vector is equal to 400")

test_that("whether the k_separated_bigrams_pssm function gives us the expected output",{
  ss<-k_separated_bigrams_pssm(system.file("extdata","C7GQS7.txt.pssm",package="PSSMCOOL"),5)
  expect_equal(length(ss),400)
})
