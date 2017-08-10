class CartsController < ApplicationController
  def index
    @user = current_user
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
end
