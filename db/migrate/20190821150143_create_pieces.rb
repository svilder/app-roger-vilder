class CreatePieces < ActiveRecord::Migration[6.0]
  def change
    create_table :pieces do |t|
      t.string :name
      t.string :description
      t.string :dimensions
      t.integer :year
      t.string :image
      t.string :category
      t.string :collection

      t.timestamps
    end
  end
end
