React = require 'react'
Time = require 'react-time'
AutoupdateTime = require 'react-autoupdate-time'
moment = require 'moment'

module.exports = React.createClass
  displayName: 'SmartTimeAgo'

  getDefaultProps: ->
    value: new Date()

  render: ->
    thisYear = moment().year() is moment(@props.value).year()

    # Show relative dates for tickets < two weeks old and absolute dates for anything
    # older.
    if 2 >= moment().diff(moment(@props.value), 'weeks')
      @transferPropsTo(
        <AutoupdateTime />
      )
    # Drop the year if it's this year.
    else if thisYear
      @transferPropsTo(
        <Time format="D MMM" />
      )
    else
      @transferPropsTo(
        <Time format="D MMM YYYY" />
      )
