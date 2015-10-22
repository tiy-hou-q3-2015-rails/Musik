var TrackListItem = React.createClass({

  handleTrackSelected: function(e) {
    e.preventDefault();
    ee.emitEvent('track-selected', [this.props.data.permalink_url])
  },

  render: function() {
    var component = this;
    return(
      <a href="#" onClick={component.handleTrackSelected} className="list-group-item clearfix">
        <span className="pull-right h2 text-muted m-l">
          {this.props.trackCount}
        </span>
        <span className="pull-left thumb-sm avatar m-r">
          <img src={this.props.data.user.avatar_url} alt="..." />
        </span>
        <span className="clear">
          <span>{this.props.data.title}</span>
          <small className="text-muted clear text-ellipsis">{ "by " + this.props.data.user.username}</small>
        </span>
      </a>
    );
  }
});
