class User < ApplicationRecord
    has_many :problems
    has_many :solutions
    has_many :votes
end
