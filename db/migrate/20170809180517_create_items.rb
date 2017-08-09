class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.integer :quantity
      t.numeric :price
      t.text :store
      t.text :category
      t.text :notes
      t.references :user, foreign_key: true, null: false
      t.references :list, foreign_key: true, null: false

      t.timestamps
    end
  end
end
