class CreatePingsTable < ActiveRecord::Migration
  def up
    create_table :pings do |t|
      t.float :lat
      t.float :lng
    end
  end

  def down
    drop_table :pings
  end
end
