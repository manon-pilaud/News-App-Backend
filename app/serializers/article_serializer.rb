class ArticleSerializer < ActiveModel::Serializer
  attributes :id,:title,:description,:article_url,:country_id,:image_url
  has_many :reading_lists
  has_many :users, through: :reading_lists
  belongs_to :country
end
