Then("I should see {string}") do |expected_content|
    if @article
        within("#article_#{@article.id}") do
            expect(page).to have_content expected_content
        end
    else
        expect(page).to have_content expected_content
    end
end

Then("I should be on {string} page") do |string|
    expect(page).to have_title string
end
  
Then("I should not see {string}") do |expected_content|
    if @article.nil?
        expect(page).not_to have_content expected_content
    else
        within("#article_#{@article.id}") do
            expect(page).not_to have_content expected_content
        end
    end
end

Then("I should see a link {string}") do |expected_text|
    expect(page).to have_link expected_text
end 
  