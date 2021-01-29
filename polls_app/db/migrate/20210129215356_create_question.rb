class CreateQuestion < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      #t.integer :user_id, null: false
      t.integer :poll_id, null: false
      t.text :body

      t.timestamps
    end

    #add_index :questions, :user_id
    add_index :questions, :poll_id
  end
end
