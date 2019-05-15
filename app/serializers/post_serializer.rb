class PostSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name, :img_url, :views, :likes
  belongs_to :user 
  has_many :uploads 
  has_many :products
end
