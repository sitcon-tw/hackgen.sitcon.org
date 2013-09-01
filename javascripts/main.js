(function() {
  require.config({
    paths: {
      'jquery': ['http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min', 'vendor/jquery-1.10.2.min'],
      'react': ['http://fb.me/react-0.4.1.min', 'vendor/react-0.4.1.min']
    },
    shim: {
      'jquery': {
        exports: '$'
      }
    }
  });

  require(['jquery', 'react'], function($, React) {
    return console.log('Using jQuery Version: ' + $().jquery);
  });

}).call(this);
