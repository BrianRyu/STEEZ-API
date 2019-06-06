class CommentSerializer < ActiveModel::Serializer
  attributes :id, :comment, :user_id, :post_id
  belongs_to :user
  belongs_to :post
end
