Given("the following article exists") do |table|
  table.hashes.each do |table|
    FactoryBot.create(:article, table)
  end
end

