var TrackCollection = React.createClass({

  getInitialState: function() {
    return { tracks: this.props.tracks }
  },

  render: function() {
    return(
      <div className="row row-sm">
        { this.state.tracks.map(function(track) {
          return <Track key={track.id} data={track} />
        })}
      </div>
    );
  }
});
