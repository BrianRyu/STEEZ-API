class Api::V1::PostsController < ApplicationController
    before_action :find_post, only: [:show, :update]
    before_action :authorized, only: [:create]

    def index
        @posts = Post.all
        render json: @posts
    end
    
    def show
        render json: @post
    end

    def create
        @post = @user.posts.create(post_params)
        render json: @post, status: :accepted
    end 

    def update
        @post.update(params.permit(:likes, :views))
        if @post.save
        render json: @post, status: :accepted
        else
        render json: { errors: @post.errors.full_messages }, status: :unprocessible_entity
        end
    end
    
    private
    
    def post_params
        params.permit(:name, :img_url, :views, :likes, :user_id)
    end
    
    def find_post
        @post = Post.find(params[:id])
    end
end
