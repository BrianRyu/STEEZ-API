class Post < ApplicationRecord
    belongs_to :user
    has_many :uploads
    has_many :products, through: :uploads
end
