class VideosController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @videos = Video.all.reverse_order
  end

  def show
    @video = Video.find(params[:id])
    @video_coordinates = { lat: @video.latitude, lng: @video.longitude }
  end
end
