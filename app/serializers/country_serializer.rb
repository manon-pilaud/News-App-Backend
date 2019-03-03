class CountrySerializer < ActiveModel::Serializer
  attributes :id,:name,:code,:flag
  has_many :user_countries
  has_many :users, through: :user_countries
end
