class User < ActiveRecord::Base
  has_secure_password

  #attr_accessible :email, :password, :password_confirmation

# !! ---- need to add validation of : format of email  and password length ----!!
  validates_uniqueness_of :email
end
