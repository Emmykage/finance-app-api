class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :amount, :coin_type, :status, :wallet_address, :transaction_type
  has_one :wallet
end
