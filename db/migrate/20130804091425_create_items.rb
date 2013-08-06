class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :classification
      t.integer :price
      t.string :amazon_link

      t.timestamps
    end
  end
end
