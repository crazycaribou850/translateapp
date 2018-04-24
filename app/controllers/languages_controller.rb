class LanguagesController < ApplicationController
  def show
    @language = Language.find(params[:id])
  end

  #http://www.jonathanhui.com/ruby-rails-3-model-many-many-association
  def adopt
    @user = current_user
    if @user.playlists.include?(@playlist)
      redirect_to language_path(params[:language_id])
    else
      @playlist = Playlist.find(params[:id])
      @playlist.usercount += 1
      unless @user.playlists.include?(@playlist)
        @user.playlists << @playlist
      end
    @user.save
    redirect_to language_path(params[:language_id])
    end
  end

  def adopthelper
    redirect_to language_path(params[:language_id])
  end

end
