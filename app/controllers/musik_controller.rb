class MusikController < ApplicationController

  before_action :authenticate_user!, :authenticate_subscription!, except: [:show]
  before_action :setup_soundcloud

  def index
    @track_url = "https://soundcloud.com/daze-of-resistance/recursion"
    @tracks = @client.hot_tracks
  end

  def setup_soundcloud
    @client = SoundCloudAPI.new
  end

  def show
    @artist = params[:artist]
    @track_title = params[:track_title]
    @track_url = "https://soundcloud.com/" + @artist + "/" + @track_title
  end

end
