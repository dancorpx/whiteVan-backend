class User < ApplicationRecord
  has_many :items
  has_many :exchanges
  has_many :exchanges, through: :item

  validates :username, uniqueness: true
  validates :thief_id, uniqueness: true, format: { with: /20\d{10}/i, message: "please enter Thief ID in correct format"}
  validates :area, inclusion: { in: %w(north chengdu, south chengdu, east chengdu, west chengdu)}
end






