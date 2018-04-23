class HomeController < ApplicationController

  def index
    @language = Language.new
  end

  def helper
    redirect_to language_path(params[:language][:id])
  end

end
