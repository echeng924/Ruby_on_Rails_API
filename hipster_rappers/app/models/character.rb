class Character < ApplicationRecord
  has_many :owners
  has_many :raps, through: :owners
end
