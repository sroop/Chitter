require 'bcrypt'

class User

	attr_reader :password
	attr_accessor :password_confirmation

	include DataMapper::Resource

	property :id, Serial
	property :name, String
	property :email, String
	property :username, String
	property :password_digest, Text

	def password=(password)
	  @password = password
      self.password_digest = BCrypt::Password.create(password)
  	end

  	validates_uniqueness_of :email
  	validates_uniqueness_of :username
	validates_confirmation_of :password

  	has n, :cheeps

  	def self.authenticate(email, password)
		user = first(email: email)
		if user && BCrypt::Password.new(user.password_digest) == password
			user
		else
			nil
		end
	end

end