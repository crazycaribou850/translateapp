class AddLanguageToPlaylists < ActiveRecord::Migration[5.1]
  def change
    add_reference :playlists, :language, foreign_key: true
  end
end
