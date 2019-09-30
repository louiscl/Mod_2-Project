class User < ApplicationRecord
    has_many :requests
    has_many :teams, through: :requests
    has_many :answers
end
