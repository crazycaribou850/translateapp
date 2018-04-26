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

  def update_main
    @playlist = Playlist.find(params[:id])
    @playlist.update(name: params[:playlist][:name], description: params[:playlist][:description], language_id: params[:playlist][:language_id])
    @playlist.save
    redirect_to update_rest_path(@playlist.id)
  end

  def update_rest
    @playlist = Playlist.find(params[:id])
    @playlisthelper = Playlist.new
    @playlisthelper.words = nil
  end

  def update_words
    @playlist = Playlist.find(params[:id])
    @playlist.words.add(params[:playlist][:words])
    @playlist.save
    if finished?
      redirect_to user_path(current_user.id)
    else
      redirect_to update_rest_path(@playlist.id)
    end
  end

private
  def playlist_params
    params.require(:playlist).permit(:name, :description, :language_id)
  end

  def finished?
    params[:commit] == "Finish"
  end
end
