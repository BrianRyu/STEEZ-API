class Product < ApplicationRecord
    has_many :parts
    has_many :posts, through: :parts
    validates :name, presence: true
    validates :img_url, presence: true
    validates :description, presence: true
end
