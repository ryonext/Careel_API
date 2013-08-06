class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.integer :account_id
      t.integer :item_id
      t.integer :status

      t.timestamps
    end
  end
end
