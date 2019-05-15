class Part < ApplicationRecord
    belongs_to :posts
    belongs_to :products
end
