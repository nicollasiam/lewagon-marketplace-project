class Admin::VideosController < ApplicationController
  before_action :find_video, only: [:show, :edit, :update, :destroy]


  def index
    @videos = Video.all.where(user: current_user)
  end

  def show
    @video_coordinates = { lat: @video.latitude, lng: @video.longitude }
    @tags = Tag.joins(:video_tags).where(video_tags: { video: @video })

    if @video.latitude.nil? && @video.longitude.nil?
      @hash = {}
    else
      @hash = Gmaps4rails.build_markers(@video) do |video, marker|
        marker.lat video.latitude
        marker.lng video.longitude
        # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
      end
    end
  end

  def edit
  end

  def update
    if @video.update(video_params)
      redirect_to admin_video_path(@video)
    else
      render :edit
    end
  end

  def new
    @video = Video.new
    @tags = Tag.all
  end

  def create
    @video = Video.new(video_params)
    movie = FFMPEG::Movie.new(params[:video][:file].tempfile.path)
    @video.width = movie.width
    @video.height = movie.height
    @video.frame_rate = movie.frame_rate
    @video.enconding = movie.video_codec
    @video.length = movie.duration
    @video.user = current_user

    # First item is always an empty string
    tags = params[:video][:video_tags][1..-1]

    tags.each do |tag|
      new_video_tag = VideoTag.new
      new_video_tag.video = @video
      new_video_tag.tag = Tag.find(tag.to_i)
      new_video_tag.save!
    end

    if @video.save
      redirect_to admin_video_path(@video)
    else
      render :new
    end
  end

  def destroy
    @video.destroy
    redirect_to admin_videos_path
  end

  def bought
    @user = current_user
    @videos = @user.bought_videos
  end

  private

  def find_video
    @videos = Video.all.where(user: current_user)
    @video = @videos.find(params[:id])
  end

  def video_params
    params.require(:video).permit(:file, :file_cache, :user, :name, :location, :price)
  end
end
