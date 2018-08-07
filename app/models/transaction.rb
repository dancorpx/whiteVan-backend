class Transaction < ApplicationRecord
  has_one :item
  belongs_to :seller, through: :item, source: :user
  belongs_to :buyer, class_name: "User", foreign_key: "buyer_id"
  has_one :chat_record
end




