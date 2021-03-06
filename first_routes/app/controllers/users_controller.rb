class UsersController < ApplicationController

  def index
    render plain: "I'm in the index action!"
  end

  def create
    user = User.new(params.require(:user).permit(:name, :email))
    if user.save!
      render json: user
    else
      render json: user.errors.full_messages, status: 422
    end
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def update
    user = User.find(params[:id])

    
    if user.update(user_params)
      render json: user
    else
      render json: user.errors.full_messages, status: 422
    end

  end

  def destroy
    user = User.find(params[:id])

    if user
      user.destroy
      redirect_to users_url
    else
      render json: 'User not found', status: 404
    end

  end

  private

  def user_params 
    params.require(:user).permit(:name, :email)
  end


end