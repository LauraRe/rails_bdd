Then("I should see {string}") do |expected_content|
    expect(page).to have_content expected_content
end

Then("I should be on {string} page") do |string|
    expect(page).to have_title string
end
  