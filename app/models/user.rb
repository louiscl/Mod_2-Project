class User < ApplicationRecord
    has_many :requests
    has_many :teams, through: :requests
    has_many :answers

    validates_format_of :email, with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/

    has_secure_password
end
