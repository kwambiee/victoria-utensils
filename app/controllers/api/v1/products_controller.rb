class Api::V1::ProductsController < ApplicationController
    before_action :authenticate_request, except: [:index, :new_products, :show]

    def index
        @products = Product.all
        render json: @products, status: :ok
    end

    def new_products
        @products = Product.new_products
        render json: @products, status: :ok
    end

    def show
        @product = Product.find(params[:id])
        render json: @product, status: :ok
    end

end
