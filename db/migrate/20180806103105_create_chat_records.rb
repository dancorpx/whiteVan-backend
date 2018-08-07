class CreateChatRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :chat_records do |t|
      t.string :message

      t.timestamps
    end
  end
end
