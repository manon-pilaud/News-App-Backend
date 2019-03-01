class UserCountrySerializer < ActiveModel::Serializer
  attributes :id, :user_id, :country_id
end
