class User < ApplicationRecord
  has_many :items
  has_many :exchanges
  has_many :exchanges, through: :item
end






