json.exchanges do
 json.array! @exchanges do |exchange|
 json.extract! exchange, :id, :item_id, :buyer_id, :lat, :lng, :sold, :created_at, :updated_at
 end
end
