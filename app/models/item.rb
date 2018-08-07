class Item < ApplicationRecord
  belongs_to :seller, class_name: "User", foreign_key: "seller_id"
  belongs_to :trans, foreign_key: "item_id", class_name: "Transaction"
end
