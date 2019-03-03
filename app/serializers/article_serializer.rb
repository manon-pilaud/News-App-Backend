class ArticleSerializer < ActiveModel::Serializer
  attributes :id,:title,:source,:article_url
  has_many :reading_lists
  has_many :users through: :reading_lists
end
