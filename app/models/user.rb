class User < ApplicationRecord
    has_many :requests, dependent: :destroy
    has_many :teams, through: :requests
    has_many :answers
    enum role: [:standard_user, :gold_user]
    # after_initialize :set_default_role, :if => :new_record?

    validates_format_of :email, with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/

    has_secure_password

    # def set_default_role
    #     self.role ||= :student
    # end

end
