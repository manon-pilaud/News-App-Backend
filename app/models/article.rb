class Article < ApplicationRecord
  has_many :countries, through: :article_countries
  has_many :article_countries
  has_many :reading_lists
  has_many :users, through: :reading_lists
end