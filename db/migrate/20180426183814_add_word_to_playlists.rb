class AddWordToPlaylists < ActiveRecord::Migration[5.1]
  def change
    add_column :playlists, :word, :string
  end
end
