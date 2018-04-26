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
     session[:return_to] ||= request.referer
  end

  def update_main
    if params[:commit].eql?("Finish")
      redirect_to user_path(current_user.id)
    else
      @playlist = Playlist.find(params[:id])
      if session.delete(:return_to) == "edit"
        @playlist.update(name: params[:playlist][:name], description: params[:playlist][:description], language_id: params[:playlist][:language_id])
      else
        @playlist.words.add(params[:playlist][:words])
        @playlist.save
      end
      @playlisthelper = Playlist.new
      @playlisthelper.words = nil
    end
  end

  def update
    @playlist = Playlist.find(params[:id])
    @playlist.words.add(params[:playlist][:words])
    @playlist.save
    session[:return_to] ||= request.referer
    redirect_to update_main_post_path(@playlist.id)
  end

private
  def playlist_params
    params.require(:playlist).permit(:name, :description, :language_id)
  end

  def finished?
    params[:commit] == "Finish"
  end

end
