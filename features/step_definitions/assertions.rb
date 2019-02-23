Then("I should see {string}") do |expected_content|
    expect(page).to have_content expected_content
end

Then("I should be on {string} page") do |string|
    expect(page).to have_title string
end

Then("when I am looking at the article titled {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
Then("I should not see {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
end
  