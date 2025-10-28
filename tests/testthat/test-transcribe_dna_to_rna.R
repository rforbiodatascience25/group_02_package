test_that("transcribe_dna_to_rna", {
  expect_equal(transcribe_dna_to_rna("ATAT"), "AUAU")
})
