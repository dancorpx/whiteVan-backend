class AddIdKeysToTables < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :seller_id, :integer
    add_column :exchanges, :buyer_id, :integer
    add_column :exchanges, :chat_record_id, :integer
    add_column :exchanges, :item_id, :integer
    add_column :chat_records, :user_id, :integer
  end
end
