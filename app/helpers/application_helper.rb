module ApplicationHelper
  def load_navbar
    if user_signed_in?
      render 'shared/navbar-loggedin'
    else
      render 'shared/navbar-loggedout'
    end
  end
end
