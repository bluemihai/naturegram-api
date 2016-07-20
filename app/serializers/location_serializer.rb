class LocationSerializer < ActiveModel::Serializer
  attributes :id, :city, :state, :zipcode, :latitude, :longitude, :title, :description
end
