class SoundCloudAPI

  def initialize
    @client = SoundCloud.new(client_id: '67f5f6bd5ecee04b89566b5fccacc136')
  end

  def recent_tracks(num_of_tracks=8)
    current_date = Time.now
    options = {}
    options["limit"] = num_of_tracks
    options["order"] = "created_at"
    options["license"] = "cc-by-sa"

    @client.get('/tracks', options)
  end

  def hot_tracks(num_of_tracks=8)
    @client.get('/tracks', limit: num_of_tracks, order: 'hottness')
  end
end
