class CartVideo < ApplicationRecord
  belongs_to :video
  belongs_to :cart
end
