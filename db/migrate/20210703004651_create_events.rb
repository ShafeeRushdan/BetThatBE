class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :logo
      t.string :name

      t.timestamps
    end
  end
end
