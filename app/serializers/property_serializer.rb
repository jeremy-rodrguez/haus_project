class PropertySerializer < ActiveModel::Serializer
  attributes :id, :address, :image, :status
  has_one :agent
end
