json.messages do
 json.array! @messages do |message|
  json.extract! message, :id, :exchange_id, :message, :user_id, :created_at, :updated_at
  json.sender message.user, :id, :username, :thief_id, :area, :open_id
  json.exchange message.exchange, :id, :item_id, :buyer_id, :lat, :lng, :sold, :created_at, :updated_at
  json.time message.created_at.strftime("%b %e, %l:%M %p")
 end
end
