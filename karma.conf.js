// Karma configuration
// Generated on Sat Aug 17 2013 12:37:38 GMT-0400 (EDT)

module.exports = function(config) {
  config.set({
    basePath: '',
    frameworks: ['qunit'],
    files: [
      "test/javascript/lib/jquery.js",
      "test/javascript/lib/handlebars.js",
      "test/javascript/lib/ember.js",
      "test/javascript/lib/ember-data.js",
      "test/javascript/lib/jquery.mockjax.js",
      "app/assets/javascripts/application.js",
      "app/assets/javascripts/**/*.coffee",
      "test/javascript/support/ember-fixture.js.coffee",
      "test/javascript/**/*.coffee",
      "app/assets/javascripts/**/*.handlebars"
    ],
    exclude: [
      "app/assets/javascripts/store.js.coffee"
    ],
    // possible values: 'dots', 'progress', 'junit', 'growl', 'coverage'
    reporters: ['dots'],
    port: 9876,
    colors: true,
    // possible values: config.LOG_DISABLE || config.LOG_ERROR || config.LOG_WARN || config.LOG_INFO || config.LOG_DEBUG
    logLevel: config.LOG_INFO,
    autoWatch: false,
    // Start these browsers, currently available:
    // - Chrome
    // - ChromeCanary
    // - Firefox
    // - Opera
    // - Safari (only Mac)
    // - PhantomJS
    // - IE (only Windows)
    browsers: ['PhantomJS'],
    // If browser does not capture in given timeout [ms], kill it
    captureTimeout: 60000,
    singleRun: true,
    plugins: [
      "karma-qunit",
      "karma-chrome-launcher",
      "karma-coffee-preprocessor",
      "karma-ember-preprocessor",
      "karma-phantomjs-launcher"
    ],
    preprocessors: {
      "**/*.coffee": "coffee",
      "**/*.handlebars": "ember"
    },
    coffeePreprocessor: {
      transformPath: function(path) {
        return path.replace(/(\.js)?\.coffee/, ".js");
      }
    }
  });
};
