class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :quantity, default: 0
      t.boolean :active, default: false
      t.text :url_image
      t.decimal :amount, default: 0
      t.category :references, null: false

      t.timestamps null: false
    end
  end
end
