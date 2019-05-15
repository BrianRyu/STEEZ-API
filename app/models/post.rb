class Post < ApplicationRecord
    belongs_to :user
    has_many :parts
    has_many :products, through: :parts
end
