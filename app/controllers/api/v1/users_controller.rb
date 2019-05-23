class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:create, :login]

    def index
      @users = User.all 
      render json: @users
    end  

    def create
      @user = User.create(user_params)
      if @user.valid?
        @token = encode_token(user_id: @user.id)
        render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
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
        render json: @user
      else 
        render json: {error: "Invalid Login. Please Try Again or Register!"}
      end
    end 

    def profile 
      render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end 
   
    private
    def user_params
      params.require(:user).permit(:username, :password)
    end
  end