react-smart-time-ago
====================

Show relative "time ago" dates for anything in last two weeks and absolute dates from then on back

Two days ago => `two days ago`

Older than two weeks => `Jul 4 2014`

## Install
`npm install react-smart-time-ago`

## Usage

```javascript
var SmartTimeAgo = require('react-smart-time-ago');

var time = new Date();

<SmartTimeAgo value={time} />
```
