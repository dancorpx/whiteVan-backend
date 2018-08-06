class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.float :lat
      t.float :lng
      t.boolean :sold

      t.timestamps
    end
  end
end
