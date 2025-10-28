test_that("DNA sequence contains only valid nucleotides", {
  seq <- generate_dna(100)
  expect_true(grepl("^[ATGC]+$", seq))  # only A, T, G, C allowed
  expect_equal(nchar(seq), 100)         # correct length
})
