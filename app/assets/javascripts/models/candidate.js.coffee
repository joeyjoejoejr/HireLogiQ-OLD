# for more details see: http://emberjs.com/guides/models/defining-models/

Hirelogiq.Candidate = DS.Model.extend
  name: DS.attr('string')
  email: DS.attr('string')
  github_name: DS.attr('string')
  avatar_url: DS.attr('string')
