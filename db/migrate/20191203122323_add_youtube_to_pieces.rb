class AddYoutubeToPieces < ActiveRecord::Migration[6.0]
  def change
    add_column :pieces, :youtube, :string
  end
end
