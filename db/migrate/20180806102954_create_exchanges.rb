class CreateExchanges < ActiveRecord::Migration[5.2]
  def change
    create_table :exchanges do |t|
      t.float :lat
      t.float :lng
      t.boolean :sold

      t.timestamps
    end
  end
end
