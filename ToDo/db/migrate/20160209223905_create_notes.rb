class CreateNotes < ActiveRecord::Migration
  def up
    create_table :notes do |t|
        t.integer "user_id"
        t.string "note", :limit => 50,:default => ""
        t.boolean "is_done", :default => false
      t.timestamps null: false
    end
      add_index("notes","user_id")
  end
    
  def down
      drop_table :notes   
  end
end
