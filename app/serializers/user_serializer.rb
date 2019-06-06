class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :posts
  has_many :posts
  has_many :comments

  def posts
    object.posts.map do |post|
      {
        id: post.id,
        name: post.name,
        img_url: post.img_url,
        views: post.views,
        likes: post.likes,
        products: post.products
      }
    end
  end
end
