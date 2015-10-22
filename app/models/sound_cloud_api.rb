class SoundCloudAPI

  def initialize
    @client = SoundCloud.new(client_id: '67f5f6bd5ecee04b89566b5fccacc136')
  end

  def hot_tracks(num_of_tracks=8)
    @client.get('/tracks', limit: num_of_tracks , :order => 'hotness')
  end
end
