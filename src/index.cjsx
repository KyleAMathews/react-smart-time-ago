React = require 'react'
Time = require 'react-time-temp-fork'
AutoupdateTime = require 'react-autoupdate-time'
moment = require 'moment'

module.exports = React.createClass
  displayName: 'SmartTimeAgo'

  getDefaultProps: ->
    value: new Date()

  render: ->
    # Show relative dates for tickets < two weeks old and absolute dates for anything
    # older.
    if 2 >= moment().diff(moment(@props.value), 'weeks')
      <AutoupdateTime {...@props} />
    else
      <Time format="D MMM YYYY" {...@props} />
