class Api::V1::ItemsController < Api::V1::BaseController
  before_action :set_item, only: [:show, :update, :destroy]

  def index
    @items = Item.all
  end

  def show
  end

  def update
    if @item.update(item_params)
      render :show
    else
      render_error
    end
  end

  def create
    @item = Item.new(item_params)
    @item.seller = User.find(params[:seller_id])
    if @item.save
      render :show, status: :created
    else
      render_error
    end
  end

  def destroy
    @item.destroy
    head :no_content
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :description, :category, :price, :quantity, :seller_id)
  end

  def render_error
    render json: { errors: @item.errors.full_messages }, status: :unprocessable_entity
  end
end
