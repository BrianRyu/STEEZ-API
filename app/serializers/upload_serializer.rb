class UploadSerializer < ActiveModel::Serializer
  attributes :id, :product_id, :post_id
  belongs_to :posts
  belongs_to :products
end
