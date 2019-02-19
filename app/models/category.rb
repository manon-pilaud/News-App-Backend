class Category < ApplicationRecord
  has_many :article_categories
  has_many :articles, through: :article_categories
  has_many :user_categories
  has_many :users, through: :user_categories
end
