class Login < ActiveRecord::Base

	validates :name, presence: true
	validates :password, presence: true
	validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create
	validates :phone_number, presence: true, numericality: true
	validates :email, presence: true
	validates_confirmation_of :password,
                              message: 'should match password'
	validates_presence_of :password_confirmation, if: :password_changed?
	
end
