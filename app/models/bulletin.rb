class Bulletin < ApplicationRecord
  belongs_to :category
  belongs_to :creator
  has_one_attached :image
end
