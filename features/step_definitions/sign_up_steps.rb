Given("following user exist") do |table|
  table.hashes.each do |user_hash|
    FactoryBot.create(:user, user_hash)
  end  
end
