json.items do
 json.array! @items do |item|
 json.extract! item, :id, :name, :description, :category, :price, :quantity, :seller_id, :created_at, :updated_at
 end
end