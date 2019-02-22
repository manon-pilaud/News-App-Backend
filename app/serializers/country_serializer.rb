class CountrySerializer < ActiveModel::Serializer
  attributes :id,:name,:code
  has_many :articles, through: :article_countries
  has_many :article_countries
  has_many :user_countries
  has_many :users, through: :user_countries
end
