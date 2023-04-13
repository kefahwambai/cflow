class User < ApplicationRecord
    has_secure_password
    has_many :problems
    has_many :solutions
    has_many :votes
end
