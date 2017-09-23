class Composer < ApplicationRecord
  validates :name, uniqueness: true
  has_many :songs
  has_many :users, through: :songs
end
