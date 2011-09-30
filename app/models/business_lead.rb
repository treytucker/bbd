=begin
  THOUGHTS Need to decide which fields are required and add that on the front end
=end

class BusinessLead < ActiveRecord::Base
  #validates_presence_of :first_name, :last_name, :email, :company, #:website, :address, :city, :state, :zip_code, :message
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
  validates_format_of :zip_code, :with => /[0-9]+$/, :on => :create, :message => "has to be digits"
  validates_format_of :test, :with => /(^seven$|^7$)/, :on => :create, :message => "Evidently you are NOT human."
  validate :default_value_validations
  attr_accessor :test
  
  private
    def default_value_validations
      add_error_messages(self.first_name, "First Name")
      add_error_messages(self.last_name, "Last Name")
#      add_error_messages(self.phone, "Phone Number")
      add_error_messages(self.company, "Company Name")
#      add_error_messages(self.website, "Website")
#     add_error_messages(self.address, "Street Address")
#      add_error_messages(self.city, "City")
#      add_error_messages(self.state, "State")
      add_error_messages(self.zip_code, "Zip Code")
#      add_error_messages(self.message, "Message")
    end

    def add_error_messages(column, string)
      if column == string
        errors.add(:base, "Oops! Looks like you missed the #{string} field!")
      end
    end
end

# == Schema Information
#
# Table name: business_leads
#
#  id         :integer         not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#  email      :string(255)
#  phone      :string(255)
#  company    :string(255)
#  website    :string(255)
#  address    :string(255)
#  city       :string(255)
#  state      :string(255)
#  zip_code   :integer
#  message    :text
#  created_at :datetime
#  updated_at :datetime
#

