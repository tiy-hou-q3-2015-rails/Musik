var LargeTrackGridItem = React.createClass({

  handleSelectedTrack: function(e) {
    e.preventDefault();
    ee.emitEvent('track-selected', [this.props.data.permalink_url]);
  },

  render: function() {
    var component = this;
    return(
      <div className="col-xs-6 col-sm-4 col-md-3 col-lg-2">
        <div className="item">
          <div className="pos-rlt">
            <div className="bottom">
              <Timer timeValue={this.props.data.duration} className="badge bg-info m-l-sm m-b-sm"/>
            </div>
            <div className="item-overlay opacity r r-2x bg-black">
              <div className="center text-center m-t-n">
                <a href="#" onClick={component.handleSelectedTrack}><i className="icon-control-play i-2x"></i></a>
              </div>
              <div className="bottom padder m-b-sm">
                <a href="#" className="pull-right">
                  <i className="fa fa-heart-o"></i>
                </a>
                <a href="#">
                  <i className="fa fa-plus-circle"></i>
                </a>
              </div>
            </div>
            <a href="#">
              <img src={this.props.data.user.avatar_url} alt="" className="r r-2x img-full" />
            </a>
          </div>
          <div className="padder-v">
            <a href="#" className="text-ellipsis">{this.props.data.title}</a>
            <a href="#" className="text-ellipsis text-xs text-muted">{this.props.data.user.username}</a>
          </div>
        </div>
      </div>
    );
  }
});
