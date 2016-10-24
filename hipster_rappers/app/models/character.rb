class Character < ApplicationRecord
  has_many :appearances
  has_many :raps, through: :appearances
end
