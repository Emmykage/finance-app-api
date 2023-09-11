class PortfolioSerializer < ActiveModel::Serializer
  attributes :id, :portfolio_name, :amount, :asset, :paid, :payment_status
  # belongs_to :user
  belongs_to :asset
end
