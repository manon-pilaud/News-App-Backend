class User < ApplicationRecord
  has_many :user_countries
  has_many :countries, through: :user_countries
  has_many :reading_lists
  has_many :articles, through: :reading_lists
  has_secure_password
  validates :username, uniqueness: {case_sensitive:false}
end
