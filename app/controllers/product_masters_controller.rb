# app/controllers/product_masters_controller.rb

class ProductMastersController < ApplicationController
  before_action :set_product_master, only: [:show, :edit, :update, :destroy]

  # GET /product_masters
  def index
    @product_masters = ProductMaster.all
  end

  # GET /product_masters/1
  def show
  end

  # GET /product_masters/new
  def new
    @product_master = ProductMaster.new
  end

  # GET /product_masters/1/edit
  def edit
  end

  # POST /product_masters
  def create
    @product_master = ProductMaster.new(product_master_params)

    if @product_master.save
      redirect_to @product_master, notice: 'Product master was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /product_masters/1
  def update
    if @product_master.update(product_master_params)
      redirect_to @product_master, notice: 'Product master was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /product_masters/1
  def destroy
    @product_master.destroy
    redirect_to product_masters_url, notice: 'Product master was successfully destroyed.'
  end

  private

  def set_product_master
    @product_master = ProductMaster.find(params[:id])
  end

  def product_master_params
    params.require(:product_master).permit(:name, :description, :price, :brand_id)
  end
end
