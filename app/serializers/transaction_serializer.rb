class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :amount, :coin_type, :status, :wallet_address, :transaction_type, :receipt_url
  has_one :wallet
end