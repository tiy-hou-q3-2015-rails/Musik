var TrackList = React.createClass({

  render: function() {
    return(
      <div className="list-group bg-white list-group-lg no-bg auto">
        {this.props.tracks.map(function(track, index) {
          return <TrackListItem key={track.id} data={track} trackCount={index + 1}/>
        })}
      </div>
    );
  }
});
