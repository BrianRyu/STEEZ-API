class Api::V1::CommentsController < ApplicationController
    before_action :find_comment, only: [:show, :update]
    before_action :authorized, only: [:create]

    def index
        @comments = Comment.all
        render json: @comments
    end
    
    def show
        render json: @comment
    end

    def create
        @comment = Comment.create(comment_params)
        render json: @comment, status: :accepted
    end 

    def update
        @comment.update(comment_params)
        if @comment.save
        render json: @comment, status: :accepted
        else
        render json: { errors: @comment.errors.full_messages }, status: :unprocessible_entity
        end
    end
    
    private
    
    def comment_params
        params.permit(:user_id, :post_id, :comment)
    end
    
    def find_comment
        @comment = comment.find(params[:id])
    end
end
