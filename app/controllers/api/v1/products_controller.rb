class Api::V1::ProductsController < ApplicationController
    before_action :find_product, only: [:show, :update, :destroy]
    before_action :authorized, only: [:create, :update]
    
    def index
        @products = Product.all
        render json: @products
    end

    def show
        render json: @product
    end

    def create
        @product = Product.create(product_params)
        render json: @product, status: :accepted
    end 

    def update
        @product.update(product_params)
        if @product.save
        render json: @product, status: :accepted
        else
        render json: { errors: @product.errors.full_messages }, status: :unprocessible_entity
        end
    end

    def destroy
        @product.destroy
        render json: @product
    end 
    
    private
    
    def product_params
        params.permit(:name, :img_url, :description)
    end
    
    def find_product
        @product = Product.find(params[:id])
    end
end
