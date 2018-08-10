json.extract! @item, :id, :name, :description, :category, :price, :quantity, :seller_id, :created_at, :updated_at
  json.item_seller @item.seller, :id, :username, :thief_id, :area, :open_id
  json.exchange do
    if @item.exchange.blank?
      json.null!
    else
      json.exchange @item.exchange, :id, :item_id, :buyer_id, :lat, :lng, :sold, :created_at, :updated_at
    end
  end
