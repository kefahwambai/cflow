class SolutionSerializer < ActiveModel::Serializer
  attributes :id, :problem_id, :user_id, :solution_description, :tags, :highlighted_by
end






