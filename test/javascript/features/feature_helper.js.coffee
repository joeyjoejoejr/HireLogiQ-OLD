document.write '<div id="ember-testing-container"><div id="ember-testing"></div></div>'

Ember.testing = true
Hirelogiq.rootElement = '#ember-testing'
Hirelogiq.setupForTesting()
Hirelogiq.injectTestHelpers()

exists = (selector) ->
  !!find(selector).length

stubEndpointForHttpRequest = (url, json) ->
    $.mockjax
        url: url,
        dataType: 'json',
        responseText: json

$.mockjaxSettings.logging = false
$.mockjaxSettings.responseTime = 0
