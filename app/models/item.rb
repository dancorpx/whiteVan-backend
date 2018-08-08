class Item < ApplicationRecord
  belongs_to :seller, class_name: "User", foreign_key: "seller_id"
  has_one :exchange

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :category, presence: true, inclusion: { in: ["Vehicle", "Clothing", "Jewelry", "Construction", "Electronics"]}
  validates :seller_id, presence: true
end
