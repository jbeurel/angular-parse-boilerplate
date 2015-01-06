
var parseAdaptor = module.exports = function(Parse) {
  return function(options, callback) {
    Parse.Cloud.httpRequest({
      url: options.href,
      headers: options.headers,
      success: function(res) {
        res.body = res.text;
        res.statusCode = res.status;

        if(res.headers['Content-Encoding'] && res.headers['Content-Encoding'] === 'gzip') {
            delete res.headers['Content-Encoding'];
            delete res.headers['Content-Length'];
        }

        callback(res);
      },
      error: function(res) {
        console.error('Request failed with code ' + res.status);
        console.error(res);
        callback(null);
      }
    });
  };
};

