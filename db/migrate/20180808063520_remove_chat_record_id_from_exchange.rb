class RemoveChatRecordIdFromExchange < ActiveRecord::Migration[5.2]
  def change
    remove_column :exchanges, :chat_record_id
  end
end
