class MusikController < ApplicationController
  before_action :authenticate_user!
  def index
    soundcloud_client = SoundCloudAPI.new
    @tracks = soundcloud_client.hot_tracks
  end
end
