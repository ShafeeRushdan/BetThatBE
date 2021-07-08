class CreateWagers < ActiveRecord::Migration[6.1]
  def change
    create_table :wagers do |t|
      t.integer :user_id
      t.integer :event_id
      t.integer :amount

      t.timestamps
    end
  end
end
