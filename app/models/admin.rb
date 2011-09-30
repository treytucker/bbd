class Admin < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  
  attr_accessor :password
  validates :password, 
      :presence => true,
      :confirmation => true,
      :length => { :minimum => 5, :maximum => 40 },
      :on => :create
  validates :email,
      :presence => true
  
  before_destroy :last_admin?
  before_save :encrypt_password

  def self.authenticate(email, password)
    admin = find_by_email(email.downcase)
    if admin && admin.password_hash == BCrypt::Engine.hash_secret(password, admin.password_salt)
      admin
    else
      nil
    end
  end
  
  def self.special_select
    @admins = self.all(:select => ["email", "id", "super_user"])
  end
  
  def last_admin?
    if Admin.one?
      errors.add( :base, "You cannot delete the last admin")
      return false
    end
  end

  private
    def encrypt_password
      if password.present?
        self.password_salt = BCrypt::Engine.generate_salt
        self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
      end
    end
    
    def self.one?
      if self.count == 1
        @status = true
      end
    end
    
end


# == Schema Information
#
# Table name: admins
#
#  id            :integer         not null, primary key
#  email         :string(255)
#  password_hash :string(255)
#  password_salt :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#  super_user    :boolean
#

