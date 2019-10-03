class Admin < ApplicationRecord
    has_many :teams

    validates_format_of :email, with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/

    has_secure_password
end
