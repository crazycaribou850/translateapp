class AddCreaterIdToPlaylists < ActiveRecord::Migration[5.1]
  def change
    add_column :playlists, :creater_id, :integer
  end
end
