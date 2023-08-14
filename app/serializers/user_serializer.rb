class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :dob, :password_digest, :username, :lab_affilliate, :profile_pic, :iacuc_certified, :is_admin, :email
end
