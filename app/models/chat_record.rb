class ChatRecord < ApplicationRecord
  belongs_to :exchange
  belongs_to :user

  validates_presence_of :message, :exchange_id, :user_id
end
