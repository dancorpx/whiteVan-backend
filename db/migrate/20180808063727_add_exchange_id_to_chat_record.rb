class AddExchangeIdToChatRecord < ActiveRecord::Migration[5.2]
  def change
    add_column :chat_records, :exchange_id, :integer
  end
end
