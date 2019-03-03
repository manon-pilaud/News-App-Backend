class Article < ApplicationRecord
  has_many :reading_lists
  belongs_to :country
  has_many :users, through: :reading_lists
end
