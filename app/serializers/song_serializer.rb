class SongSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :user
  has_one :composer
  has_one :instrument
end
