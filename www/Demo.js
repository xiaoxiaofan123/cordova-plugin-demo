var exec = require('cordova/exec');

var Demo = {};

Demo.greet = function(message, success, failure) {
  exec(success, failure, "Demo", "greet", [message]);
}

module.exports = Demo;