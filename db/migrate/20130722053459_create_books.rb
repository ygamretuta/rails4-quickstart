class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :photo
      t.decimal :price
      t.references :buyer, index: true
      t.references :seller, index: true

      t.timestamps
    end
  end
end
