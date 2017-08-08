class VideosController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @videos = Video.all
  end

  def show
    @video = Video.find(params[:id])
  end
end
