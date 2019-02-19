class User < ApplicationRecord
  has_many :user_categories
  has_many :categories, through: :user_categories
  has_many :reading_lists
  has_many :articles, through: :reading_lists
end
