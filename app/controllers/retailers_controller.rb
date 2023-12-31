# app/controllers/retailers_controller.rb

class RetailersController < ApplicationController
  before_action :set_retailer, only: [:show, :edit, :update, :destroy]

  # GET /retailers
  def index
    @retailers = Retailer.all
  end

  # GET /retailers/1
  def show
  end

  # GET /retailers/new
  def new
    @retailer = Retailer.new
  end

  # GET /retailers/1/edit
  def edit
  end

  # POST /retailers
  def create
    @retailer = Retailer.new(retailer_params)

    if @retailer.save
      redirect_to @retailer, notice: 'Retailer was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /retailers/1
  def update
    if @retailer.update(retailer_params)
      redirect_to @retailer, notice: 'Retailer was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /retailers/1
  def destroy
    @retailer.destroy
    redirect_to retailers_url, notice: 'Retailer was successfully destroyed.'
  end

  private

  def set_retailer
    @retailer = Retailer.find(params[:id])
  end

  def retailer_params
    params.require(:retailer).permit(:name, :location)
  end
end
