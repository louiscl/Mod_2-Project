class Team < ApplicationRecord
    has_many :requests
    has_many :users, through: :requests
    has_many :questions
    has_many :answers, through: :questions
end
