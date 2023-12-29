class EarningSerializer < ActiveModel::Serializer
  attributes :id
  has_one :wallet
end
