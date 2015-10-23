var SmallTrackGrid = React.createClass({

  getInitialState: function() {
    return { tracks: this.props.tracks }
  },

  render: function() {
    return(
      <div className="row row-sm">
        { this.state.tracks.map(function(track) {
          return <SmallTrackGridItem key={track.id} data={track} />
        })}
      </div>
    );
  }
});
