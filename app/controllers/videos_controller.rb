class VideosController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @videos = Video.all
  end

  def show

  end

  def edit
  end

  def new
    @video = Video.new
  end

  def update
  end

  def create
    @video = Video.create(video_params)
    current_user.videos << @video
  end

  def destroy
  end

  private

  def find_video
    @video = Video.find(params[:id])
  end

  def video_params
    params.require(:video).permit(:file, :file_cache, :user)
  end
end
