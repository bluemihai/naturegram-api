class Api::V1::LocationsController < Api::V1::BaseController
  def index
    locations = Location.order(:id)

    render(json: locations)
  end

  def show
    location = Location.find(params[:id])

    render(json: location)
  end
end