class Exchange < ApplicationRecord
  belongs_to :item
  has_one :seller, through: :item
  belongs_to :buyer, class_name: "User", foreign_key: "buyer_id"
  has_one :chat_record
end




