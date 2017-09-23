class Song < ApplicationRecord
  belongs_to :user
  belongs_to :composer
  belongs_to :instrument
end
