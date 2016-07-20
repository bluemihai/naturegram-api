json.array!(@pictures) do |picture|
  json.extract! picture, :id, :location_id, :description, :title
  json.url picture_url(picture, format: :json)
end
