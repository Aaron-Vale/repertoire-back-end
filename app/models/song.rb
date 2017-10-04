class Song < ApplicationRecord
  belongs_to :user
  validates :name, :composer, :instrument, presence: true, on: :create
end
