class CreateUsersTable < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :username
      t.string :image
      t.integer :twitter_id
    end

    add_index :users, :twitter_id, unique: true
  end

  def down
    drop_table :users
  end
end
