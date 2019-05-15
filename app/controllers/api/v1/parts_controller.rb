class Api::V1::PartsController < ApplicationController
    def index
        @parts = Part.all 
        render json: @parts
    end 

    def new
        @part = Part.new
    end 

    def create 
        @part = Part.create(part_params)
        render json: @part, status: :accepted
    end 

    private
    
    def part_params
        params.permit(:post_id, :product_id)
    end
    
    def find_part
        @part = Part.find(params[:id])
    end
end
