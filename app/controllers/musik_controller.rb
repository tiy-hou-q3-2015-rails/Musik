class MusikController < ApplicationController
  before_action :authenticate_user!
  def index
    @track_url = "https://soundcloud.com/daze-of-resistance/recursion"
  end

  def show
    @artist = params[:artist]
    @track_title = params[:track_title]
    @track_url = "https://soundcloud.com/" + @artist + "/" + @track_title
  end

end
