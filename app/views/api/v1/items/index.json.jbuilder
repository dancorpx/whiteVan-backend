json.items do
 json.array! @items do |item|
    json.extract! item, :id, :name, :description, :category, :price, :quantity, :seller_id, :created_at, :updated_at
    json.seller item.seller, :id, :username, :thief_id, :area, :open_id
  end
end
