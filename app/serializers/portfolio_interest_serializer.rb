class PortfolioInterestSerializer < ActiveModel::Serializer
  attributes :id, :interest, :withdrawn
  has_one :portfolio
end
