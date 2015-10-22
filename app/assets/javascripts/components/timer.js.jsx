var Timer = React.createClass({

  getInitialState: function() {
    return { timeValue: this.props.timeValue }
  },

  componentWillReceiveProps: function(nextProps) {
    this.setState({timeValue: nextProps.timeValue});
  },

  prettyTime: function(time) {
    var hours = Math.floor(time / 3600);
    var mins = '0' + Math.floor((time % 3600) / 60);
    var secs = '0' + Math.floor((time % 60));

    mins = mins.substr(mins.length - 2);
    secs = secs.substr(secs.length - 2);

    if (!isNaN(secs)) {
      if (hours) {
        return hours + ":" + mins + ":" + secs;
      } else {
        return mins + ":" + secs;
      }
      } else {
        return '00:00';
      }
   },

  render: function() {
    return (
      <div>
        <span className={this.props.className}>{this.prettyTime(this.state.timeValue)}</span>
      </div>
    );
  }
});
