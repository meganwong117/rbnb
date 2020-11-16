class CreateDresses < ActiveRecord::Migration[6.0]
  def change
    create_table :dresses do |t|
      t.references :user, null: false, foreign_key: true
      t.text :description
      t.integer :price
      t.string :size
      t.string :event_type

      t.timestamps
    end
  end
end
