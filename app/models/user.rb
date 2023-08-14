class User < ApplicationRecord
    has_secure_password

    validates :username, :email, :first_name, :last_name, :dob, :password_digest, :lab_affilliate, :profile_pic, :iacuc_certified, presence: true
    validates :username, uniqueness: true

    validates :is_admin, inclusion: { in: [false], message: "Not allowed to make more admins (must not be true)." }, unless: :admin_user?

    def admin_user?
        self.username == "admin"
    end
end
