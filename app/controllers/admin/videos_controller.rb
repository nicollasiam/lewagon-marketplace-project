class Admin::VideosController < ApplicationController
  def index
    @videos = current_user.videos
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
end
