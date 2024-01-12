class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :mobile_no, :total_asset, :role
  has_many :portfolios
  has_one :wallet
end