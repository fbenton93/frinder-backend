class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users.to_json(methods: [:likee_relationships,:liker_relationships])
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def create
    @user = User.create!(user_params)
    # if @user.save
      render json: @user, status: :created
    # end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    render json: :success
  end

  private

  def user_params
    params.require(:new_user).permit(:email, :name, :age, :bio, :location, :img_url)
  end
end
