var exec = require('cordova/exec');

exports.captureScreen = function(success, error) {
    exec(success, error, "rapture", "captureScreen", []);
};
