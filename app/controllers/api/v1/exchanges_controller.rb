class Api::V1::ExchangesController < Api::V1::BaseController
  before_action :set_exchange, only: [:show, :update, :destroy]

  def index
    if params[:query].present?
      @exchanges = Exchange.where(buyer_id: params[:query])
    else
      @exchanges = Exchange.all
    end
  end

  def show
  end

  def update
    if @exchange.update(exchange_params)
      render :show
    else
      render_error
    end
  end

  def create
    @exchange = Exchange.new(exchange_params)
    @exchange.item = Item.find(params[:item_id])
    @exchange.buyer = User.find(params[:buyer_id])
    if @exchange.save
      render :show, status: :created
    else
      render_error
    end
  end

  def destroy
    @exchange.destroy
    head :no_content
  end

  private

  def set_exchange
    @exchange = Exchange.find(params[:id])
  end

  def exchange_params
    params.require(:exchange).permit(:item_id, :buyer_id, :lat, :lng, :sold)
  end

  def render_error
    render json: { errors: @exchange.errors.full_messages }, status: :unprocessable_entity
  end
end
