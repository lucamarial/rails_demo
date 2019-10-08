require 'rails_helper'

RSpec.describe Author, type: :model do
  describe 'Database table' do
    it {is_expected.to have_db_column :id}
    it {is_expected.to have_db_column :name}
    it {is_expected.to have_db_column :genre}
  end

  describe 'Validates attributes' do
    it {is_expected.to validate_presence_of :name}
    it {is_expected.to validate_presence_of :genre}
  end

  describe 'Factory' do
    it 'should have a valid Factory' do
      expect(FactoryBot.create(:author)).to be_valid
    end
  end
end
