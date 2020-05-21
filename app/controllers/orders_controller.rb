class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :update, :destroy]

  # GET /orders
  def index
    @orders = Order.all

    render :json => @orders.to_json( :include => [:items])

  end

  # GET /orders/1
  def show
    render json: @order
  end

  # POST /orders
  def create
    @order = Order.create(order_params)
 
    params['cartItems'].each do |item|
      ItemOrder.create(order_id: @order.id, item_id: item['id'])
    end
      render :json => @order.to_json( :include => [:items])
      # render json: @order, includes: :items,  status: :created, location: @order
  end

  # PATCH/PUT /orders/1
  def update
    if @order.update(order_params)
      render json: @order
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  # DELETE /orders/1
  def destroy
    @order.destroy
    render json: @order
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def order_params
      params.require(:order).permit(:totalAmount, :shippingAddress, :user_id)
    end

end
