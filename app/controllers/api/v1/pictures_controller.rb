class Api::V1::PicturesController < Api::V1::BaseController
  def index
    pictures = Picture.order(:id)

    render(json: pictures)
  end

  def show
    picture = Picture.find(params[:id])

    render(json: picture)
  end
end