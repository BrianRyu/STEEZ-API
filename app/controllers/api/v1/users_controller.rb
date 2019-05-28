class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:show, :index, :create]

    def index
      @users = User.all 
      render json: @users
    end  

    def create
      @user = User.create(user_params)
      if @user.valid?
        @token = encode_token({user_id: @user.id})
        render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
      else
        render json: { error: 'Failed to create user. Username and/or Password has been taken. Please try again.' }, status: :not_acceptable
      end
    end

    def show
      @user = User.find(params[:id])
      render json: @user
    end


    def profile 
      render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end 
   
    private
    def user_params
      params.permit(:username, :password)
    end
  end