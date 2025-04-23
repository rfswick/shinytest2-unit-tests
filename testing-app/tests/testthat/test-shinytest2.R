library(shinytest2)

test_that("{shinytest2} recording: one-name-greeting", {
  app <- AppDriver$new(name = "one-name-greeting", height = 725, width = 1169)
  app$set_inputs(name_input = "Rachel")
  app$click("greeting_button_input")
  app$expect_values(output = "greeting_output")
})


test_that("{shinytest2} recording: testing-app", {
  app <- AppDriver$new(name = "testing-app", height = 725, width = 1169)
  app$set_inputs(name_input = "Rachel")
  app$click("greeting_button_input")
  app$expect_values(output = "greeting_output")
  app$set_inputs(name_input = "Sam")
  app$click("greeting_button_input")
  app$expect_values(output = "greeting_output")
})


test_that("{shinytest2} recording: just-click-greet", {
  app <- AppDriver$new(name = "just-click-greet", height = 725, width = 1169)
  app$click("greeting_button_input")
  app$expect_values(output = "greeting_output")
})


test_that("{shinytest2} recording: default-3-species", {
  app <- AppDriver$new(name = "default-3-species", height = 725, width = 1169)
  app$expect_values(output = "scatterplot_output")
})


test_that("{shinytest2} recording: graph-2-species", {
  app <- AppDriver$new(name = "graph-2-species", height = 725, width = 1169)
  app$set_inputs(penguin_spp_input_open = TRUE, allow_no_input_binding_ = TRUE)
  app$set_inputs(penguin_spp_input = c("Chinstrap", "Gentoo"))
  app$expect_values(output = "scatterplot_output")
  app$set_inputs(penguin_spp_input_open = FALSE, allow_no_input_binding_ = TRUE)
})
