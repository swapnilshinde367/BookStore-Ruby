class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name, limit: 50
      t.text :description, limit: 100
      t.decimal :price
      t.date :published_date
      t.references :author, index: true
      t.references :publisher, index: true

      t.timestamps
    end
  end
end
