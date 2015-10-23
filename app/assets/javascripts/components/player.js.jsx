var Player = React.createClass({

  getInitialState: function() {
    return {
      player: this.props.player,
      currentTime: 0,
      isPlaying: false
    }
  },

  componentDidMount: function() {
    var component = this;

    // Listen for the timeupdate event, so when the
    // song is playing the elapsed-time Timer gets
    // updated.
    this.state.player.on('timeupdate', function(audio) {
      component.setState({currentTime: audio.target.currentTime});
    });

  },

  componentWillReceiveProps: function(newProps) {
    if (this.state.isPlaying) {
      this.state.player.stop();
      this.state.player.play();
    }
  },

  componentWillUnmount: function() {
    this.state.player.unbindAll();
  },

  playTrack: function(e) {
    e.preventDefault();
    var component = this;

    if (this.state.isPlaying === true) {
      this.state.player.pause();
      this.setState({isPlaying: false});
    } else {
      this.state.player.play();
      this.setState({isPlaying: true});
    }
  },

  render: function() {
    var playerControl = this.state.isPlaying ? "fa fa-pause" : "fa fa-play";
    return(
      <div className="soundcloud-player">
        <i className={playerControl} onClick={this.playTrack}></i>
        <p className="track-title">{this.props.currentTrack.title}</p>
        <Sharer currentTrack={this.props.currentTrack} />
        <div className="progress-bar">
          <Timer timeValue={this.state.currentTime} className="elapsed-time" />
          <progress max={this.state.player.duration} value={this.state.currentTime}>
          </progress>
          <Timer timeValue={this.state.player.duration} className="total-time"/>
        </div>
      </div>
    );
  }
});
