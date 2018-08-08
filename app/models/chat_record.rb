class ChatRecord < ApplicationRecord
  has_one :exchange
  has_many :users


end
