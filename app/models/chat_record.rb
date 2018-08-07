class ChatRecord < ApplicationRecord
  belongs_to :transaction
  has_many :users
end
