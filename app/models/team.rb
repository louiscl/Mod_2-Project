class Team < ApplicationRecord
    has_many :requests
    has_many :questions, dependent: :destroy
    has_many :answers, through: :questions
    has_many :users, through: :requests
    belongs_to :admin
end
