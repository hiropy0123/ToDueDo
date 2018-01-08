class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.string :title, limit: 32, null: false
      t.date :due
      t.boolean :completion, default: false
      t.boolean :star, default: false
      t.text :memo

      t.timestamps
    end
  end
end
