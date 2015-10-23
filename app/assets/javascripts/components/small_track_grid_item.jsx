var SmallTrackGridItem = React.createClass({

  handleTrackSelection: function(e) {
    e.preventDefault();
    ee.emitEvent('track-selected', [this.props.data.permalink_url]);
  },

  render: function() {
    var component = this;
    return(
      <div className="col-xs-6 col-sm-3">
        <div className="item">
          <div className="pos-rlt">
            <div className="item-overlay opacity r r-2x bg-black">
              <div className="center text-center m-t-n">
                <a href="#" onClick={component.handleTrackSelection}>
                  <i className="fa fa-play-circle i-2x"></i>
                </a>
              </div>
            </div>
            <a href="#">
              <img src={this.props.data.user.avatar_url} alt="boo" className="r r-2x img-full"></img>
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
