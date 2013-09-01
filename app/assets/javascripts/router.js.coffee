# For more information see: http://emberjs.com/guides/routing/

Hirelogiq.Router.map ()->
  @route "candidates",  path: "/"
  @resource "candidate", path: "candidate/:candidate_id"


Hirelogiq.CandidatesRoute = Ember.Route.extend
  model: -> Hirelogiq.Candidate.find()
