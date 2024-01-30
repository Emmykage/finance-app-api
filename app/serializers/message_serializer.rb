class MessageSerializer < ActiveModel::Serializer
  attributes :id, :title, :body
  has_one :recipient
  has_one :sender
end
