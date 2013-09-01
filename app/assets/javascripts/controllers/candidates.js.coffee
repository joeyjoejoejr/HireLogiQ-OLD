Hirelogiq.CandidatesController = Ember.ArrayController.extend
  addCandidate: ->
    Hirelogiq.Candidate.createRecord
      name: @get('newCandidateName')
      email: @get('newCandidateEmail')
      github_name: @get('newCandidateGitHub')
      avatar_url: @get('newCandidateAvatar')
    @get('store').commit()
    false

  showCandidate: (candidate) ->
    @transitionToRoute("candidate", candidate)

  updateGitHubName: (result) ->
    @set "newCandidateGitHub", result.login
    @set "newCandidateAvatar", result.avatar_url
    @set "results", []

