class PortfolioSerializer < ActiveModel::Serializer
  attributes :id, :portfolio_name, :amount, :asset, :paid, :payment_status, :investment_interest
  has_many :portfolio_interests
  belongs_to :asset
end
