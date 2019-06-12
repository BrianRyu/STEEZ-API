class CommentSerializer < ActiveModel::Serializer
  attributes :id, :comment, :user_id, :post_id
end
