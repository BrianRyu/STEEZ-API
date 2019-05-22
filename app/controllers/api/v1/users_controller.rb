class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def index
      @users = User.all 
      render json: @users
    end 

    def profile 
      render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end 

    def show
      @user = User.find(params[:id])
      render json: @user
    end

    def login
      @user = User.find_by(username: params[:username])
      if @user && @user.authenticate(params[:password])
        token = encode_token({user_id: @user.id})
        render json: {user: UserSerializer.new(@user), token: token}
      else 
        render json: {error: "Please Try Again"}
      end
    end 
   
    private
    def user_params
      params.require(:user).permit(:username, :password)
    end
  end