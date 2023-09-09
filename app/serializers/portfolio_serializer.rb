class PortfolioSerializer < ActiveModel::Serializer
  attributes :id, :portfolio_name, :amount, :asset
  # belongs_to :user
  belongs_to :asset
end
