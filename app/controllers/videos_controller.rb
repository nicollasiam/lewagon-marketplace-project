class VideosController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
  end

  def edit
  end

  def show
  end

  def new
  end
end
