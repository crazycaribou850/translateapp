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
    @playlist.usercount = 1
    @playlist.words = Set.new
    @playlist.save
    current_user.playlists << @playlist
    redirect_to user_path(params[:id])
  end

  def edit
     @playlist = Playlist.find(params[:id])
  end

  def update
    @playlist = Playlist.find(params[:id])
    @playlist.update(name: params[:playlist][:name], description: params[:playlist][:description], language_id: params[:playlist][:language_id], words: params[:playlist][:words])
    redirect_to user_path(current_user.id)
  end

private
  def playlist_params
    params.require(:playlist).permit(:name, :description, :language_id)
  end
end
