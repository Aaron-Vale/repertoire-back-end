# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :songs
  has_many :composers, through: :songs
  has_many :instruments, through: :songs
end
