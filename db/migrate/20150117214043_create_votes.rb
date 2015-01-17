class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :drink_id
      t.string :twitter_name
      t.string :user_key
      t.string :user_secret
      t.timestamps
    end
  end
end
