class CreateUsers < ActiveRecord::Migration

  def up
      create_table :users do |t|
          t.string "first_name", :limit => 50,:default => ""
          t.string "second_name", :limit => 50,:default => ""
          t.string "email", :limit => 50, :null => false
          t.string "password",:limit => 50, :null =>false
          t.timestamps null: false
    end
  end

  def down
      drop_table :users
  end

end
