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
  end

  def update
  end

  def create
  end

  def destroy
  end

  private

  def find_video
    @video = Video.find(params[:id])
  end
end
