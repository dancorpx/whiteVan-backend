class ChatRecord < ApplicationRecord
  belongs_to :exchange
  belongs_to :user

  validates_presence_of :message, :exchange_id, :user_id

  def message_time
    created_at.strftime("%b %e, %l:%M %p")
  end
end
