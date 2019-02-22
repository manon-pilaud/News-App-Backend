class UserSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :user_countries
  has_many :countries, through: :user_countries
  has_many :reading_lists
  has_many :articles, through: :reading_lists
end
