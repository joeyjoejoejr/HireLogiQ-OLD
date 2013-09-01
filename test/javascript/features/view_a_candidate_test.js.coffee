module "integration tests",
  setup: ->
    Hirelogiq.Candidate.FIXTURES = [
      id: 1
      name: "Captain Vimes"
      github_name: "IHatePocketImps"
      avatar_url: "#"]
    Ember.run ->
      Hirelogiq.reset()
      Hirelogiq.deferReadiness()
  teardown: ->
    $.mockjaxClear()

test "view an added candidate", ->
  Ember.run Hirelogiq, 'advanceReadiness'
  visit("/")
    .click(".candidate")
    .then ->
      equal find("h2").text(), "Captain Vimes", "not linked to candidate show page"

