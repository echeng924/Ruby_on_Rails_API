class Rap < ApplicationRecord
  has_many :owners
  has_many :characters, through: :descriptions
end
