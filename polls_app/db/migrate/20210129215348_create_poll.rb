class CreatePoll < ActiveRecord::Migration[5.2]
  def change
    create_table :polls do |t|
      t.integer :user_id, null: false
      t.text :title, null: false

      t.timestamps
    end
    add_index :polls, :title 
    add_index :polls, :user_id
  end
end
