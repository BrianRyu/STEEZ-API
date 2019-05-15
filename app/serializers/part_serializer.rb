class PartSerializer < ActiveModel::Serializer
  attributes :id, :post_id, :product_id
  belongs_to :post
  belongs_to :product
end
