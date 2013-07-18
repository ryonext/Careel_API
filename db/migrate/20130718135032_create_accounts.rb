class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :profile
      t.string :icon_path
      t.string :area
      t.string :twitter_id
      t.string :oauth_token
      t.string :oauth_secret
      t.string :client_token

      t.timestamps
    end
  end
end
