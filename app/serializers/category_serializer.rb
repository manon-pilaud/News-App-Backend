class CategorySerializer < ActiveModel::Serializer
  attributes :id,:name,:type_name
  has_many :articles, through: :article_categories
  has_many :article_categories
  has_many :user_categories
  has_many :users, through: :user_categories
end
