test_that("split_into_codons() split sequence into codons", {
  expect_equal(split_into_codons("AUGUUUUAA"), c("AUG", "UUU", "UAA"))
})

test_that("split_into_codons() ignores excess bases", {
  expect_equal(split_into_codons("AUGUUUUAAG"), c("AUG", "UUU", "UAA"))
})
