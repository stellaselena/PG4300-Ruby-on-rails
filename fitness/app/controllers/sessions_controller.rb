class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:name])
    if user and user.authenticate(params[:password])
      sessions[:user_id] = user.id
      redirect_to admin_url
    else
      redirect_to login_url, alert:"Wrong login credentials"
    end
  end

  def destroy
  end
end
