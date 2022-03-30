class Knight < ApplicationRecord
  belongs_to :player
  has_many :weapons
end
