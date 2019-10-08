class Author < ApplicationRecord
  validates :name, presence: :true
  validates :genre, presence: :true
end
