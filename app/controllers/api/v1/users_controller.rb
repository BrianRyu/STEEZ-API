class Api::V1::UsersController < ApplicationController
    def create
      @user = User.create(user_params)
      if @user.valid?
        render json: { user: UserSerializer.new(@user) }, status: :created
      else
        render json: { error: 'failed to create user' }, status: :not_acceptable
      end
    end

    def show
      @user = User.find(params[:id])
      render json: @user
    end

    def login
      @user = User.find_by(username: params[:username])
      if @user && @user.authenticate(params[:password])
        render json: {user: UserSerializer.new(@user)}
      else 
        render json: {error: "Please Try Again"}
      end
    end 
   
    private
    def user_params
      params.require(:user).permit(:username, :password)
    end
  end