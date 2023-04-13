class VoteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :solution_id, :vote_type
end






