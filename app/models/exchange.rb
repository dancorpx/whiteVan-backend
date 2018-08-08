class Exchange < ApplicationRecord
  belongs_to :item
  has_one :seller, through: :item
  belongs_to :buyer, class_name: "User", foreign_key: "buyer_id"
  has_many :chat_records, dependent: :destroy

  validates :item_id, presence: true
  validates :buyer_id, presence: true
end




