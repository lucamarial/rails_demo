Given("I visit the landing page") do
  visit root_path
end

When("I click {string} link") do |string|
  click_on string
end

When("I fill in {string} with {string}") do |string, string2|
  fill_in string, with: string2
end

When("I click {string} button") do |string|
  click_on string
end

Then("I should be on {string} page") do |string|
  visit current_path
end

Then("I should see {string}") do |string|
  document(page).to have_content string
end

Then("I sould see {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end
