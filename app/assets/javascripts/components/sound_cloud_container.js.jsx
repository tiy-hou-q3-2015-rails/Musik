var SoundCloudContainer = React.createClass({

  getInitialState: function() {
    return {
      player: new SoundCloudAudio('67f5f6bd5ecee04b89566b5fccacc136'),
      currentTrack: {}
    }
  },

  componentDidMount: function() {
    this.resolveTrack(this.props.trackUrl);
    ee.addListener('track-selected', this.handleSelectedTrack);
  },

  handleSelectedTrack: function(track) {
    console.log(track);
    this.resolveTrack(track);
  },

  resolveTrack: function(trackUrl) {
    var component = this;

    scPlayer = this.state.player;
    scPlayer.resolve(trackUrl, function(track, err) {
      component.setState({currentTrack: track});
    });
  },

  render: function() {
    var component = this;
    return(
      <footer className="footer bg-dark player">
        <Player player={this.state.player} currentTrack={component.state.currentTrack} />
      </footer>
    );
  }
});
