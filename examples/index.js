var SmartTimeAgo = require('../dist/index.js');
var React = require('react');
var moment = require('moment');
console.log(React.renderToString(SmartTimeAgo()));
var date = new Date(1987, 4, 8, 5, 0, 0, 0);
var recent = new moment().subtract(3, 'weeks');

React.render(React.DOM.div(null, [SmartTimeAgo(), React.DOM.br(), SmartTimeAgo({value: recent}), React.DOM.br(), SmartTimeAgo({value:date})]), document.body);
