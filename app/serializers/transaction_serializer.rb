class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :amount, :type, :status
  has_one :wallet
end
