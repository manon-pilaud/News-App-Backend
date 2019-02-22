class ArticleCountry < ApplicationRecord
  belongs_to :article
  belongs_to :country
end
