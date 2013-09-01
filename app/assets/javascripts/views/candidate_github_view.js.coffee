Hirelogiq.CandidateGitHub = Ember.TextField.extend
  keyPress: (_e) ->
    Ember.run.debounce @, @gitHubNameSearch, 500, @runNow

  focusOut: (_e) ->
    @get("controller").set("results", [])

  gitHubNameSearch: ->
    search = @get('controller').get('newCandidateGitHub')
    $.ajax(
      headers:
        Accept: 'application/vnd.github.preview.text-match+json'
      dataType: 'json'
      url: "https://api.github.com/search/users?q=#{search}"
    )
    .done((data) =>
      Ember.run =>
        @get("controller").set('results', data.items))
    .fail((data) => console.log(data))
