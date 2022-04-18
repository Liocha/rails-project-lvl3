class Bulletin < ApplicationRecord
  belongs_to :category
  belongs_to :creator, class_name: 'User'

  has_one_attached :image do |attachable|
    attachable.variant :thumb, resize: '100x100'
  end
end
