# frozen_string_literal: true

class User < ApplicationRecord
  has_many :bulletins, foreign_key: 'creator_id', class_name: 'Bulletin', inverse_of: :creator, dependent: :destroy
end
