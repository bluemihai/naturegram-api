class PictureSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :location_id, :description, :title
end
