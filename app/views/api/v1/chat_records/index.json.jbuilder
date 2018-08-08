json.chat_records do
 json.array! @messages do |message|
 json.extract! message, :id, :exchange_id, :message, :user_id, :created_at, :updated_at
 end
end
