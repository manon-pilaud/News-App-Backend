class Article < ApplicationRecord
  has_many :categories, through: :article_categories
  has_many :article_categories
  has_many :reading_lists
  has_many :users, through: :reading_lists
end
