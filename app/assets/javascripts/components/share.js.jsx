var Sharer = React.createClass({

  getInitialState: function(){
    return {
      currentTrack: {}
    }
  },

  componentWillReceiveProps: function(nextProps){
    this.setState({currentTrack: nextProps.currentTrack});
    console.log(this.state.currentTrack);
  },

  componentDidMount: function(){
    console.log(this.state.currentTrack);

  },
  //
  // grabPermalink: function(){
  //   var stolen = this.state.currentTrack.permalink_url;
  //   console.log("state",this.state.currentTrack.permalink_url);
  //   return stolen;
  // },

  render: function(){
    var component = this;
    var trackTest = this.state.currentTrack;
    console.log(Object.keys(trackTest).length);
    if (Object.keys(trackTest).length > 0) {
      var stolen = "/musik/" + this.state.currentTrack.user.permalink + "/" + this.state.currentTrack.permalink;
      var stolenString = String(stolen);
      console.log(stolenString);
    } else {
      var stolen = "/";
      var stolenString = String(stolen);
      console.log(stolenString);
    };
    return(
      <a href="https://twitter.com/share" className="twitter-share-button"
        data-url={stolenString} data-count="horizontal">Tweet</a>
    )
  }
})
