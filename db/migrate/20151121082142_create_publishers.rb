class CreatePublishers < ActiveRecord::Migration
  def change
    create_table :publishers do |t|
      t.string :name, limit: 50
      t.string :email, limit: 50
      t.string :phone, limit: 15
      t.text :address, limit: 100

      t.timestamps
    end
  end
end
