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

  def buy
    # Apenas o metodo foi criado para configurar o e-mail
    # Falta criar a rota(routes.rb)
    # E atribuir ela ao botao de compra

    UserMailer.buy(current_user).deliver_now
  end


  def destroy
    cart = current_user.cart
    cart.cart_videos.where(video_id: params[:id]).last.destroy
    redirect_to carts_path
  end
end
