class Question < ApplicationRecord
    belongs_to :team
    has_many :answers
end
