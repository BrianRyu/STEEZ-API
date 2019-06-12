class Post < ApplicationRecord
    belongs_to :user
    has_many :comments
    has_many :parts
    has_many :products, through: :parts
end
