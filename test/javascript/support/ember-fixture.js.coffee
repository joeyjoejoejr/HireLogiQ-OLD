# http://emberjs.com/guides/models/defining-a-store/

Hirelogiq.Store = DS.Store.extend
  revision: 11
  adapter: 'DS.FixtureAdapter'

Hirelogiq.Candidate.FIXTURES = []

