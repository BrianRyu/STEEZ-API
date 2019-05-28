class Api::V1::AuthController < ApplicationController
    skip_before_action :authorized, only: [:login, :auto_login]

    def login
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
          @token = encode_token({user_id: @user.id})
          render json: { user: @user, jwt: @token }, status: :created
        else 
          render json: {error: "Invalid Login. Please Try Again or Register!"}
        end
      end 

    def auto_login
      user_id = request.headers["Authorization"]
      @user = User.find(user_id)
      if @user 
        render json: @user
      else
        render json: {error: "errrrrrorrrr"}
      end 

    end 

    # def create 
    #     @user = User.find_by(username: user_login_params[:username])
    #     if @user && @user.authenticate(user_login_params[:password])
    #         token = encode_token({user_id: @user.id})
    #         render json: { user: UserSerializer.new(@user), jwt: token }, status: :accepted
    #     else 
    #         render json: { message: 'Invalid username or password' }, status: :unauthorized
    #     end 
    # end 
end
