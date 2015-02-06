class User < ActiveRecord::Base
  has_secure_password

  #attr_accessible :email, :password, :password_confirmation

# !! ---- need to add validation of : format of email  and password length ----!!
  validates_uniqueness_of :email

# refer railcasts episode 189 and 188 
  ROLES = %w[admin employee manager hr_exec]

  def role_symbols
    [role.to_sym]
  end
end
