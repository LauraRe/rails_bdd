Given("the following articles exists") do |table|
    table.hashes.each do |article|
      Article.create!(article)
    end
end

Given("I visit the {string} page") do |page_name|
    page = page_name == 'landing' ? root_path : page_name
    visit page
end
  
Given("I am reading the article titled {string}") do |title|
    @article = Article.find_by_title(title)
end

When("I click {string}") do |element_text|
    within("#article_#{@article.id}") do
        click_on element_text
    end
end

# When("I fill in {string} with {string}") do |element, value|
#     fill_in element, with: value
# end

When("I fill in {string} with {string}") do |element, value|
    within("#article_#{@article.id}") do
        fill_in element, with: value
    end
end
