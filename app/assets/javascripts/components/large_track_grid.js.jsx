var LargeTrackGrid = React.createClass({

  render: function() {
    return(
      <div className="row row-sm">
        {this.props.tracks.map(function(track) {
          return <LargeTrackGridItem key={track.id} data={track} />
        })}
      </div>
    );
  }
});
