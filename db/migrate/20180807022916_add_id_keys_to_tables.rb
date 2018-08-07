class AddIdKeysToTables < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :seller_id, :integer
    add_column :transactions, :buyer_id, :integer
    add_column :transactions, :chat_record_id, :integer
    add_column :transactions, :item_id, :integer
    add_column :chat_records, :user_id, :integer
  end
end
