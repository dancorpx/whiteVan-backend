json.exchanges do
 json.array! @exchanges do |exchange|
  json.extract! exchange, :id, :item_id, :buyer_id, :lat, :lng, :sold, :created_at, :updated_at
  json.seller exchange.seller, :id, :username, :thief_id, :area, :open_id
  json.buyer exchange.buyer, :id, :username, :thief_id, :area, :open_id
  json.chat_records exchange.chat_records, :id, :exchange_id, :message, :user_id, :created_at, :updated_at
 end
end
