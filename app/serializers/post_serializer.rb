class PostSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name, :img_url, :views, :likes
  has_many :products
end
