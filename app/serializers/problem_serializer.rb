class ProblemSerializer < ActiveModel::Serializer
  attributes :id, :user_id,:problem_description, :tags
end
