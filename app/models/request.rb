class Request < ApplicationRecord
    belongs_to :team
    belongs_to :user
    has_many :questions, through: :team

    validates :name, presence: true
end
