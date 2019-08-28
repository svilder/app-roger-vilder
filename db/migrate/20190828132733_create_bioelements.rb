class CreateBioelements < ActiveRecord::Migration[6.0]
  def change
    create_table :bioelements do |t|
      t.string :name
      t.string :section

      t.timestamps
    end
  end
end
