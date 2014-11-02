class SessionsController < ApplicationController

  def create
    user = User.find(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      render json: {user: user}
    else
      render json: {user: user, errors: ["Invalid email or password"] }, status: :unprocessable_entity
    end
  end
end
