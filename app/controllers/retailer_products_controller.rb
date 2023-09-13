# app/controllers/retailer_products_controller.rb

class RetailerProductsController < ApplicationController
  before_action :set_retailer_product, only: [:show, :edit, :update, :destroy]

  # GET /retailer_products
  def index
    @retailer_products = RetailerProduct.all
  end

  # GET /retailer_products/1
  def show
  end

  # GET /retailer_products/new
  def new
    @retailer_product = RetailerProduct.new
  end

  # GET /retailer_products/1/edit
  def edit
  end

  # POST /retailer_products
  def create
    @retailer_product = RetailerProduct.new(retailer_product_params)

    if @retailer_product.save
      redirect_to @retailer_product, notice: 'Retailer product was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /retailer_products/1
  def update
    if @retailer_product.update(retailer_product_params)
      redirect_to @retailer_product, notice: 'Retailer product was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /retailer_products/1
  def destroy
    @retailer_product.destroy
    redirect_to retailer_products_url, notice: 'Retailer product was successfully destroyed.'
  end

  private

  def set_retailer_product
    @retailer_product = RetailerProduct.find(params[:id])
  end

  def retailer_product_params
    params.require(:retailer_product).permit(:product_id, :retailer_id, :price, :stock_quantity)
  end
end
