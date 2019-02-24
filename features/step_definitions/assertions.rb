Then("I should see {string}") do |expected_content|
    within("#article_#{@article.id}") do
        expect(page).to have_content expected_content
    end
end

Then("I should be on {string} page") do |string|
    expect(page).to have_title string
end
  
Then("I should not see {string}") do |expected_content|
    within("#article_#{@article.id}") do
        expect(page).not_to have_content expected_content
    end
end
  