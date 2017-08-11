class VideosController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index

    if params[:word] || params[:category] # User performed a search
      @category = Tag.find(params[:category]) if params[:category] != 'All'
      @word = params[:word]

      @videos = Video.all

      if @category.present? && @category != 'All'

        @videos = @videos.joins(:video_tags).where(video_tags: { tag: @category})
      end

      if @word.present?
        @videos = @videos.where('name LIKE ?', "%#{@word}%")
      end
    else
      @videos = Video.all.reverse_order
    end

    @categories = Tag.all.order(name: :asc)
  end

  def show
    @video = Video.find(params[:id])
    @video_coordinates = { lat: @video.latitude, lng: @video.longitude }
    @user = current_user

    if @video.latitude.nil? && @video.longitude.nil?
      @hash = {}
    else
      @hash = Gmaps4rails.build_markers(@video) do |video, marker|
        marker.lat video.latitude
        marker.lng video.longitude
        # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
      end
    end

    if current_user && current_user.cart
      user_videos = current_user.cart.cart_videos.all
      user_videos.where(video_id: @video.id).length == 0 ? @is_video_in_cart = false : @is_video_in_cart = true
    end
  end
end
