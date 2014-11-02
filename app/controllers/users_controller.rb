class UsersController < ApplicationController

  def create
    user = User.find(email: params[:email])

    if user.present?
      render json: {user: user, errors: ["user already exists with that email"]}, status: :unprocessable_entity
    else
      user = User.new(params)

      if user.save
        render json: { user: user }
      else
        render json: { user: user, errors: user.errors }, status: :unprocessable_entity
      end
    end
  end

end
