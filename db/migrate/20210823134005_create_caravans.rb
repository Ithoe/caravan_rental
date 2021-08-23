class CreateCaravans < ActiveRecord::Migration[6.0]
  def change
    create_table :caravans do |t|
      t.string :name
      t.text :description
      t.integer :built_year
      t.string :brand
      t.float :daily_rate
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
