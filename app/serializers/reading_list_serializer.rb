class ReadingListSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :article_id
  belongs_to :article
  belongs_to :user
end
