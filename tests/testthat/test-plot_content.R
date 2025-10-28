test_that("plot_content returns a ggplot object", {
  p <- plot_content("banana")
  expect_s3_class(p, "ggplot")
})

test_that("plot_content handles empty string", {
  expect_error(plot_content(""), ".*") # should ideally throw or handle gracefully
})

