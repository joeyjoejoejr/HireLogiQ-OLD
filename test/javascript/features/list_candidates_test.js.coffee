module "integration tests",
  setup: ->
    Ember.run ->
      Hirelogiq.reset()
      Hirelogiq.deferReadiness()
  teardown: ->
    $.mockjaxClear()

test "Add a new candidate", ->
  Ember.run Hirelogiq, 'advanceReadiness'
  visit("/")
    .fillIn(".add-candidate", "Ted Dancin")
    .fillIn(".candidate-email", "RawkStar@stevieklabnie.com")
    .click(".submit")
    .then ->
      equal find("#candidates .candidate").length, 1, "one candidate was not added"
      equal find(".candidate-name", "#candidates .candidate").first().text(), "Ted Dancin"
        ,"the candidate was not added"
    .fillIn(".add-candidate", "Ted Nugent")
    .click(".submit")
    .then ->
      equal find("#candidates .candidate").length, 2, "second candidate was not added"

test "live of github search ", ->
  data = { items: [{ login: "Joeyjoejoejr", avatar_url: "#" }]}
  stubEndpointForHttpRequest "https://api.github.com/search/users*", data
  Hirelogiq.CandidateGitHub.reopen({ runNow: true })
  Ember.run Hirelogiq, 'advanceReadiness'
  visit("/")
    .fillIn(".candidate-github", "joeyjoejoejr")
    .keyEvent(".candidate-github", "keypress", 13)
    .then ->
      ok find("img.candidate-avatar").length == 1, "candidate github not found"
    .click(".github-user")
    .then ->
      equal find(".candidate-github").val(), "Joeyjoejoejr", "name not changed"
