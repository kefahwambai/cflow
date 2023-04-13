# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts "Seeding"
# Users
User.create(username: "John", email: "john@example.com", password_digest: "password")
User.create(username: "Jane", email: "jane@example.com", password_digest: "password")


# Problems
Problem.create(user_id: 1, problem_description: "How to solve Rubik's Cube?", tags: "puzzle, toys")
Problem.create(user_id: 2, problem_description: "How to learn Spanish?", tags: "language, learning")
Problem.create(user_id: 3, problem_description: "How to bake a cake?", tags: "baking, cooking")
Problem.create(user_id: 4, problem_description: "How to fix a flat tire?", tags: "automobiles, maintenance")

# Solutions
Solution.create(problem_id: 1, user_id: 2, solution_description: "Watch Rubik's Cube tutorials on YouTube", tags: "video, tutorial", highlighted_by: false)
Solution.create(problem_id: 1, user_id: 3, solution_description: "Join a Rubik's Cube club for tips and tricks", tags: "club, community", highlighted_by: true)
Solution.create(problem_id: 2, user_id: 1, solution_description: "Take Spanish classes at a local language school", tags: "class, language", highlighted_by: false)
Solution.create(problem_id: 3, user_id: 4, solution_description: "Follow a cake recipe online step by step", tags: "recipe, baking", highlighted_by: true)
Solution.create(problem_id: 4, user_id: 3, solution_description: "Use a tire jack to lift the car, then replace the flat tire with a spare", tags: "maintenance, automobile", highlighted_by: false)

# Votes
Vote.create(user_id: 1, solution_id: 1, vote_type: 1)
Vote.create(user_id: 2, solution_id: 1, vote_type: -1)
Vote.create(user_id: 3, solution_id: 2, vote_type: 1)
Vote.create(user_id: 4, solution_id: 3, vote_type: 1)

puts "Done Seeding"