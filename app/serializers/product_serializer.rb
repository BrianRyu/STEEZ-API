class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :img_url, :description
  has_many :posts
end
