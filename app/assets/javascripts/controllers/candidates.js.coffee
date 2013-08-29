Hirelogiq.CandidatesController = Ember.ArrayController.extend
  addCandidate: ->
    Hirelogiq.Candidate.createRecord name: @get('newCandidateName')
    @get('store').commit()
    false
