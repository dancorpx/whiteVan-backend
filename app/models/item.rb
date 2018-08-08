class Item < ApplicationRecord
  belongs_to :seller, class_name: "User", foreign_key: "seller_id"
  belongs_to :exchange, optional: true

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :category, presence: true, inclusion: { in: ["Vehicle", "Clothing", "Jewelry", "Construction", "Electronics"]}
  validates :seller_id, presence: true
end
