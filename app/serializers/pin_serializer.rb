class PinSerializer < ActiveModel::Serializer
  attributes :id, :description, :title, :latitude, :longitude, :address, :venue, :orientation, :date
  embed :ids, include: true

end
