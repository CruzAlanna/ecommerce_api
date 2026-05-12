class ProductsController < ApplicationController
  def index
    products = Product.all

    render json: products
  end

  def show
    product = Product.find_by(id: params[:id])

    render json: product
  end

  def create
    product = Product.create(
      name: params[:name],
      price: params[:price],
      description: params[:description]
    )

    render json: product
  end

  def update
    product = Product.find_by(id: params[:id])

    product.update(
      name: params[:name] || product.name,
      price: params[:price] || product.price,
      description: params[:description] || product.description
    )

    render json: product
  end

end
