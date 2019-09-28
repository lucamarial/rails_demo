Given("the following article exists") do |table|
  table.hashes.each do |table|
    FactoryBot.create(:article, table)
  end
end

Then("I visit the {string} page") do |string|
  visit edit_article_path(:id)
end


