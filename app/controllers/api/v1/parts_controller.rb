class Api::V1::PartsController < ApplicationController
    before_action :find_part, only: [:update]
    before_action :authorized, only: [:create, :update]

    def index
        @parts = Part.all 
        render json: @parts
    end 

    def create 
        @part = Part.create(part_params)
        render json: @part, status: :accepted
    end 

    def update
        @part.update(part_params)
        if @part.save
        render json: @part, status: :accepted
        else
        render json: { errors: @part.errors.full_messages }, status: :unprocessible_entity
        end
    end

    private
    
    def part_params
        params.permit(:post_id, :product_id)
    end
    
    def find_part
        @part = Part.find(params[:id])
    end
end
