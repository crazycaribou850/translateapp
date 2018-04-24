class PlaylistsController < ApplicationController
  def show
    @playlist = Playlist.find(params[:id])
  end

  def new
    @playlist = Playlist.new
  end

  def create
    @playlist = Playlist.create(playlist_params)
    @playlist.creater_id = current_user.id
    @playlist.save
    current_user.playlists << @playlist
    redirect_to user_path(params[:id])
  end

private
  def playlist_params
    params.require(:playlist).permit(:name, :description, :language_id)
  end
end
