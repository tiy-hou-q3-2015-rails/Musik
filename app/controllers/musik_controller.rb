class MusikController < ApplicationController
  before_action :authenticate_user!, :setup_soundcloud
  def index
    @tracks = @client.hot_tracks
  end

  def setup_soundcloud
    @client = SoundCloudAPI.new
  end
end
