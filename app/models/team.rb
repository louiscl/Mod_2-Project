class Team < ApplicationRecord
    has_many :requests
    has_many :questions, dependent: :destroy
    has_many :answers, through: :questions
    has_many :users, through: :requests
    belongs_to :admin


    def random_id
        Team.all.sample.id
    end
end
