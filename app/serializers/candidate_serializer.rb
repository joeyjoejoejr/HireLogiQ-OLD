class CandidateSerializer < ActiveModel::Serializer
  attributes :id, :name, :github_name, :avatar_url
end
