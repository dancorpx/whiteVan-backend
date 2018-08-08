class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :thief_id
      t.string :area

      t.timestamps
    end
  end
end
