class CartsController < ApplicationController
  def index
    @user = current_user
    @cart = @user.cart
  end

  def add
    unless current_user.cart
      new_cart = Cart.new
      new_cart.save

      current_user.cart = new_cart
      current_user.save
    end

    video = Video.find(params[:id])
    cart_video = CartVideo.new
    cart_video.cart = current_user.cart
    cart_video.video = video
    cart_video.save
    # raise
    redirect_to carts_path
  end

  def buy
    cart = current_user.cart
    cart.cart_videos.each do |obj|
      b = BoughtVideo.new
      b.user = current_user
      b.video = obj.video
      b.save
    end
    cart.cart_videos.destroy_all
    UserMailer.buy(current_user).deliver_now
    redirect_to videos_path
  end


  def destroy
    cart = current_user.cart
    cart.cart_videos.where(video_id: params[:id]).last.destroy
  end
end
