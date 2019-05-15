class Product < ApplicationRecord
    has_many :uploads
    has_many :posts, through: :uploads
end
