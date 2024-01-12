class WalletSerializer < ActiveModel::Serializer
  attributes :id, :wallet_balance, :transactions, :total, :withdrawal, :deposit, :net_earnings
  has_one :user
  has_many :transactions
end
